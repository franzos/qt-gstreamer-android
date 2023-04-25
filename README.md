# Qt, QML and GStreamer on Android

This is a simple demo application based on https://github.com/ystreet/qt-gstreamer-android. We struggled with this for a bit, so I figured I share the "package" with Docker environment, for everone's benefit. All credits go to the original author ystreet.

- Qt 5.15.8
- GStreamer 1.20.6
- Android NDK 21
- Target SDK 30 (min 16)

## Usage

1. Run docker container: 

```shell
$ docker-compose up -d
```

2. build the demo application inside the container: 

```shell
docker exec -it demo-monitor bash

# docker shell
cd /usr/src
mkdir -p android/src/org/freedesktop/gstreamer/androidmedia
cp /vendor/cerbero/build/dist/android_universal/armv7/share/gst-android/ndk-build/androidmedia/* android/src/org/freedesktop/gstreamer/androidmedia/
mkdir build && cd build
/opt/Qt-android-5.15.8-lts-lgpl/bin/qmake ANDROID_ABIS="armeabi-v7a arm64-v8a" ../demo-monitor.pro
make -j$(nproc)
make apk
```

You can also run `bash build.sh` once you're in the container.

3. the logs are accessible using the `adb logcat` command once the application is running:

```shell
$ adb logcat | grep -E '(demo-monitor|GStreamer)'
```

Note: Depending on your Android release you might have to manually grant permissions to the application via System Settings to see the camera output.

## Notes

We currently use GStreamer 1.20.6. Using 1.22.2 you will need to make some changes to avoid build issues like:

```
clang++: error: no such file or directory: '/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/libgstvideoconvert.a'
clang++: error: no such file or directory: '/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/libgstvideoscale.a'
```

and more:

```
/vendor/cerbero/build/sources/android_universal/armv7/glib-2.74.4/_builddir/../glib/gregex.c:1025: error: undefined reference to 'pcre2_match_context_free_8'
/vendor/cerbero/build/sources/android_universal/armv7/glib-2.74.4/_builddir/../glib/gregex.c:1027: error: undefined reference to 'pcre2_match_data_free_8'
/vendor/cerbero/build/sources/android_universal/armv7/glib-2.74.4/_builddir/../glib/gregex.c:1664: error: undefined reference to 'pcre2_code_free_8'
/vendor/cerbero/build/sources/android_universal/armv7/glib-2.74.4/_builddir/../glib/gregex.c:1097: error: undefined reference to 'pcre2_jit_match_8'
...
```