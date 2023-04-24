mkdir -p android/src/org/freedesktop/gstreamer/androidmedia
cp /vendor/cerbero/build/dist/android_universal/armv7/share/gst-android/ndk-build/androidmedia/* android/src/org/freedesktop/gstreamer/androidmedia/
# Check if build exists
if [ -d "build" ]; then
    echo "Build directory exists, removing it"
    rm -rf build
fi
mkdir build && cd build || exit
/opt/Qt-android-5.15.8-lts-lgpl/bin/qmake ANDROID_ABIS="armeabi-v7a arm64-v8a" ../demo-monitor.pro
make -j$(nproc)
make apk