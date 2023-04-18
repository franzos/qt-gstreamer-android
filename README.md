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
$ docker run -it demo-monitor bash
$ cd /usr/src
$ mkdir build && cd build
$ /opt/Qt-android-5.15.8-lts-lgpl/bin/qmake ANDROID_ABIS="armeabi-v7a arm64-v8a" ../demo-monitor.pro
$ make -j$(nproc)
$ make apk
```

4. the logs are accessible using the `adb logcat`:

```shell
$ adb logcat | grep -E '(demo-monitor|GStreamer)'
```
