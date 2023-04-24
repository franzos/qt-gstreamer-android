# Demo Monitor

Demo application to re-produce the gstreamer device monitor issue on Android

## Usage

1. build docker image: 

```shell
$ docker build -t demo-monitor .
```

2. run the docker container: 

```shell
$ docker-compose up
```

3. build the demo application inside the container: 

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

4. the logs are accessible using the `adb logcat`:

```shell
$ adb logcat | grep -E '(demo-monitor|GStreamer)'
```