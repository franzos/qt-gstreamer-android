# Demo Monitor

Demo application to re-produce the gstreamer device monitor issue on Android

## Usage

1. build docker image: 

```
docker build -t demo-monitor .
```

2. run the docker container: 

```
docker run -v $PWD:/usr/src -it demo-monitor bash
```

3. build the demo application inside the container: 

```
cd /usr/src
mkdir build && cd build
$QMAKE ANDROID_ABIS="armeabi-v7a arm64-v8a" ../demo-monitor.pro
make -j$(nproc)
make apk
```

4. the logs are accessible using the `adb logcat`:

```
adb logcat | grep -E '(demo-monitor|GStreamer)'
```
