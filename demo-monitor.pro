TEMPLATE = app 


QT += qml quick androidextras widgets


SOURCES += \
    main.cpp \
    qt_gsreamer_android.cpp \
    gstreamer_android.c

HEADERS += \
    gstreamer_android.h

RESOURCES += qml.qrc

TARGET = demo-monitor

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
ANDROID_TARGET_SDK_VERSION = 30
ANDROID_MIN_SDK_VERSION = 16

equals(ANDROID_TARGET_ARCH, armeabi-v7a) {
    GSTREAMER_ROOT=/vendor/cerbero/build/dist/android_universal/armv7
} else {
    GSTREAMER_ROOT=/vendor/cerbero/build/dist/android_universal/arm64
}

INCLUDEPATH += \
    $${GSTREAMER_ROOT}/include/gstreamer-1.0 \
    $${GSTREAMER_ROOT}/lib/gstreamer-1.0/include \
    $${GSTREAMER_ROOT}/include/glib-2.0 \
    $${GSTREAMER_ROOT}/lib/glib-2.0/include \
    $${GSTREAMER_ROOT}/include


# GStreamer Plugins
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstcoreelements.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgsttypefindfunctions.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideoconvert.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideorate.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideoscale.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideofilter.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstautodetect.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideotestsrc.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstplayback.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstx264.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstvideoparsersbad.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstandroidmedia.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstopengl.a
LIBS += $${GSTREAMER_ROOT}/lib/gstreamer-1.0/libgstqmlgl.a

#plugin libs
LIBS += $${GSTREAMER_ROOT}/lib/liborc-0.4.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstgl-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgraphene-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libpng16.a
LIBS += $${GSTREAMER_ROOT}/lib/libjpeg.a
LIBS += $${GSTREAMER_ROOT}/lib/libx264.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstvideo-1.0.a
#LIBS += $${GSTREAMER_ROOT}/lib/libgstbadbase-1.0.a
#LIBS += $${GSTREAMER_ROOT}/lib/libgstbadvideo-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstaudio-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstpbutils-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgsttag-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstphotography-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstcontroller-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstcodecparsers-1.0.a
LIBS += -lEGL -lGLESv2


LIBS += $${GSTREAMER_ROOT}/lib/libgio-2.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libglib-2.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgobject-2.0.a

#gstreamer libs
LIBS += $${GSTREAMER_ROOT}/lib/libgstbase-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgstreamer-1.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgmodule-2.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libgobject-2.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libglib-2.0.a
LIBS += $${GSTREAMER_ROOT}/lib/libffi.a
#LIBS += $${GSTREAMER_ROOT}/lib/libpcre.a
LIBS += $${GSTREAMER_ROOT}/lib/libiconv.a
LIBS += $${GSTREAMER_ROOT}/lib/libintl.a
LIBS += $${GSTREAMER_ROOT}/lib/libz.a