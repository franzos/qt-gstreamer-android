#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <QRunnable>
#include <gst/gst.h>
#include <gst/gstplugin.h>

extern "C" gboolean gst_qt_android_init (GError ** error);

const char*const applicationName="demo-monitor";

#ifdef Q_OS_ANDROID

#include <android/log.h>

void myMessageHandler(
  QtMsgType type,
  const QMessageLogContext& context,
  const QString& msg
) {
  QString report=msg;
  if (context.file && !QString(context.file).isEmpty()) {
    report+=" in file ";
    report+=QString(context.file);
    report+=" line ";
    report+=QString::number(context.line);
  }
  if (context.function && !QString(context.function).isEmpty()) {
    report+=+" function ";
    report+=QString(context.function);
  }
  const char*const local=report.toLocal8Bit().constData();
  switch (type) {
  case QtDebugMsg:
    __android_log_write(ANDROID_LOG_DEBUG,applicationName,local);
    break;
  case QtInfoMsg:
    __android_log_write(ANDROID_LOG_INFO,applicationName,local);
    break;
  case QtWarningMsg:
    __android_log_write(ANDROID_LOG_WARN,applicationName,local);
    break;
  case QtCriticalMsg:
    __android_log_write(ANDROID_LOG_ERROR,applicationName,local);
    break;
  case QtFatalMsg:
  default:
    __android_log_write(ANDROID_LOG_FATAL,applicationName,local);
    abort();    
  }
}

#endif

void print_device_name(GstDevice *device, gpointer user_data) {
    qWarning() << "Device name:" << gst_device_get_display_name(device);
}

gboolean
newBusMessage(GstBus *bus G_GNUC_UNUSED, GstMessage *msg, gpointer user_data G_GNUC_UNUSED)
{
    switch (GST_MESSAGE_TYPE(msg))
    {
    case GST_MESSAGE_DEVICE_ADDED:
    {
        GstDevice *device;
        gst_message_parse_device_added(msg, &device);
        qDebug() << "DEVICE ADDED:";      
        break;
    }
    case GST_MESSAGE_DEVICE_REMOVED:
    {
        GstDevice *device;
        gst_message_parse_device_removed(msg, &device);
        qDebug() << "DEVICE REMOVED:";
        break;
    }
    case GST_MESSAGE_DEVICE_CHANGED:
    {
        GstDevice *device;
        GstDevice *oldDevice;
        gst_message_parse_device_changed(msg, &device, &oldDevice);
        qDebug() << "DEVICE CHANGED:";
        break;
    }
    default:
        break;
    }
    return TRUE;
}



class SetPlaying : public QRunnable
{
public:
  SetPlaying(GstElement *);
  ~SetPlaying();

  void run ();

private:
  GstElement * pipeline_;
};

SetPlaying::SetPlaying (GstElement * pipeline)
{
  this->pipeline_ = pipeline ? static_cast<GstElement *> (gst_object_ref (pipeline)) : NULL;
}

SetPlaying::~SetPlaying ()
{
  if (this->pipeline_)
    gst_object_unref (this->pipeline_);
}

void
SetPlaying::run ()
{
  if (this->pipeline_)
    gst_element_set_state (this->pipeline_, GST_STATE_PLAYING);
}

int main(int argc, char *argv[])
{
#ifdef Q_OS_ANDROID
  qInstallMessageHandler(myMessageHandler);
#endif

  int ret;
  QApplication app(argc, argv);
  qDebug() << "----------------------------------------> START";

  if (!gst_qt_android_init (NULL))
    return -1;
  qDebug() << "-> GST initialized";

  // Print available providers
  GstRegistry *registry = gst_registry_get();
  GList *plugin_list = gst_registry_get_plugin_list(registry);

  qDebug() << "Available providers:";
  for (GList *iter = plugin_list; iter != nullptr; iter = g_list_next(iter)) {
      GstPlugin *plugin = static_cast<GstPlugin *>(iter->data);
      qDebug() << "  -" << gst_plugin_get_name(plugin);
  }

  gst_plugin_list_free(plugin_list);

  // GstDeviceMonitor logic ------>

  GstDeviceMonitor *monitor;
  GstBus *bus;
  GstCaps *caps;
  
  monitor = gst_device_monitor_new();
  if (!monitor) {
      qWarning()  << "MONITOR: monitor is null";
  }

  bus = gst_device_monitor_get_bus(monitor);
  if (!bus) {
      qWarning() << "MONITOR: bus is null";
  }
  gst_bus_add_watch(bus, newBusMessage, nullptr);
  gst_object_unref(bus);

  caps = gst_caps_new_empty_simple("audio/x-raw");
  gst_device_monitor_add_filter(monitor, "Audio/Source", caps);
  gst_caps_unref(caps);
  
  caps = gst_caps_new_empty_simple("video/x-raw");
  gst_device_monitor_add_filter(monitor, "Video/Source", caps);
  gst_caps_unref(caps);

  GList *devices = gst_device_monitor_get_devices(monitor);
  g_list_foreach(devices, (GFunc)print_device_name, NULL);
  g_list_free(devices);

  if (!gst_device_monitor_start(monitor))
  {
      qWarning() << "MONITOR: failed to start device monitor";
  }
  
  // <------ GstDeviceMonitor logic

  // GstElement *pipeline = gst_parse_launch ("videotestsrc ! x264enc tune=zerolatency ! video/x-h264,profile=baseline ! queue ! h264parse ! decodebin ! queue ! glupload ! glcolorconvert ! qmlglsink name=sink", NULL);
  // GstElement *pipeline = gst_parse_launch ("videotestsrc pattern=snow ! glupload ! qmlglsink name=sink", NULL);
  GstElement *pipeline = gst_parse_launch ("ahcsrc ! queue ! videoconvert ! glupload ! qmlglsink name=sink", NULL);
  g_assert (pipeline);
  qDebug() << "-> PIPELINE created";
  /* the plugin must be loaded before loading the qml file to register the
   * GstGLVideoItem qml item */
  GstElement *sink = gst_bin_get_by_name (GST_BIN (pipeline), "sink");
  g_assert (sink);
  qDebug() << "-> SINK created";

  QQmlApplicationEngine engine;
  engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
  qDebug() << "-> QML engine loaded";

  QQuickItem *videoItem;
  QQuickWindow *rootObject;

  /* find and set the videoItem on the sink */
  rootObject = static_cast<QQuickWindow *> (engine.rootObjects().first());
  videoItem = rootObject->findChild<QQuickItem *> ("videoItem");
  g_assert (videoItem);
  qDebug() << "-> VIDEOITEM created";
  g_object_set(sink, "widget", videoItem, NULL);
  gst_object_unref (sink);
  qDebug() << "-> SINK set";

  rootObject->scheduleRenderJob (new SetPlaying (pipeline),
      QQuickWindow::BeforeSynchronizingStage);
  qDebug() << "-> PLAYING scheduled";

  ret = app.exec();
  qDebug() << "-> APP exec returned";

  gst_element_set_state (pipeline, GST_STATE_NULL);
  gst_object_unref (pipeline);

  gst_deinit ();

  return ret;
}
