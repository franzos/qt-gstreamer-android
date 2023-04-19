```bash
root@105bdc3112b5:/usr/src# mkdir build && cd build
root@105bdc3112b5:/usr/src/build# /opt/Qt-android-5.15.8-lts-lgpl/bin/qmake ANDROID_ABIS="armeabi-v7a arm64-v8a" ../demo-monitor.pro
Info: creating stash file /usr/src/build/.qmake.stash
root@105bdc3112b5:/usr/src/build# make -j$(nproc)
make -f Makefile.Armeabi-v7a all
make -f Makefile.Arm64-v8a all
make[1]: Entering directory '/usr/src/build'
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target armv7a-linux-androideabi21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -mthumb -Oz -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/armv7/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/armv7/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/armv7/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarmeabi-v7a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o armeabi-v7a/main.o ../main.cpp
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target armv7a-linux-androideabi21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -mthumb -Oz -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/armv7/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/armv7/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/armv7/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarmeabi-v7a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o armeabi-v7a/qt_gsreamer_android.o ../qt_gsreamer_android.cpp
make[1]: Entering directory '/usr/src/build'
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target aarch64-linux-android21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/arm64/include -I/vendor/cerbero/build/dist/android_universal/arm64/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/arm64/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/arm64/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/arm64/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarm64-v8a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o arm64-v8a/main.o ../main.cpp
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target aarch64-linux-android21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/arm64/include -I/vendor/cerbero/build/dist/android_universal/arm64/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/arm64/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/arm64/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/arm64/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarm64-v8a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o arm64-v8a/qt_gsreamer_android.o ../qt_gsreamer_android.cpp
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -c -target armv7a-linux-androideabi21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -mthumb -Oz -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/armv7/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/armv7/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/armv7/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarmeabi-v7a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o armeabi-v7a/gstreamer_android.o ../gstreamer_android.c
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -c -target aarch64-linux-android21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/arm64/include -I/vendor/cerbero/build/dist/android_universal/arm64/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/arm64/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/arm64/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/arm64/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarm64-v8a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o arm64-v8a/gstreamer_android.o ../gstreamer_android.c
/opt/Qt-android-5.15.8-lts-lgpl/bin/rcc -name qml ../qml.qrc -o armeabi-v7a/qrc_qml.cpp
In file included from ../main.cpp:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/QApplication:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/qapplication.h:43:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/qtwidgetsglobal.h:43:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtGui/qtguiglobal.h:43:
/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore/qglobal.h:45:12: fatal error: 'type_traits' file not found
#  include <type_traits>
           ^~~~~~~~~~~~~
/opt/Qt-android-5.15.8-lts-lgpl/bin/rcc -name qml ../qml.qrc -o arm64-v8a/qrc_qml.cpp                                           
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target armv7a-linux-androideabi21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -mthumb -Oz -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/armv7/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/armv7/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/armv7/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/armv7/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarmeabi-v7a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o armeabi-v7a/qrc_qml.o armeabi-v7a/qrc_qml.cpp
/vendor/cerbero/build/android-ndk-18/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -c -target aarch64-linux-android21 -fno-limit-debug-info -fPIC -fstack-protector-strong -DANDROID -O2 -Wall -W -D_REENTRANT -fPIC -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_ANDROIDEXTRAS_LIB -DQT_CORE_LIB -I../../src -I. -I/vendor/cerbero/build/dist/android_universal/arm64/include -I/vendor/cerbero/build/dist/android_universal/arm64/include/gstreamer-1.0 -I/vendor/cerbero/build/dist/android_universal/arm64/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/arm64/lib/gstreamer-1.0/include -I/vendor/cerbero/build/dist/android_universal/arm64/lib/glib-2.0/include -I/opt/Qt-android-5.15.8-lts-lgpl/include -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQuick -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtGui -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQmlModels -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtQml -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtNetwork -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras -I/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore -Iarm64-v8a -I/opt/Qt-android-5.15.8-lts-lgpl/mkspecs/android-clang -o arm64-v8a/qrc_qml.o arm64-v8a/qrc_qml.cpp
In file included from ../main.cpp:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/QApplication:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/qapplication.h:43:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtWidgets/qtwidgetsglobal.h:43:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtGui/qtguiglobal.h:43:
/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore/qglobal.h:45:12: fatal error: 'type_traits' file not found
#  include <type_traits>
           ^~~~~~~~~~~~~
In file included from ../qt_gsreamer_android.cpp:1:                                                                             
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/QtAndroid:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/qandroidfunctions.h:47:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/qandroidextrasglobal.h:43:
/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore/qglobal.h:45:12: fatal error: 'type_traits' file not found
#  include <type_traits>
           ^~~~~~~~~~~~~
In file included from ../qt_gsreamer_android.cpp:1:                                                                             
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/QtAndroid:1:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/qandroidfunctions.h:47:
In file included from /opt/Qt-android-5.15.8-lts-lgpl/include/QtAndroidExtras/qandroidextrasglobal.h:43:
/opt/Qt-android-5.15.8-lts-lgpl/include/QtCore/qglobal.h:45:12: fatal error: 'type_traits' file not found
#  include <type_traits>
           ^~~~~~~~~~~~~
../gstreamer_android.c:1:10: fatal error: 'jni.h' file not found                                                                
#include <jni.h>
         ^~~~~~~
../gstreamer_android.c:1:10: fatal error: 'jni.h' file not found                                                                
#include <jni.h>
         ^~~~~~~
1 error generated.                                                                                                              
make[1]: *** [Makefile.Arm64-v8a:1258: arm64-v8a/gstreamer_android.o] Error 1
make[1]: *** Waiting for unfinished jobs....
1 error generated.
make[1]: *** [Makefile.Armeabi-v7a:1258: armeabi-v7a/gstreamer_android.o] Error 1
make[1]: *** Waiting for unfinished jobs....
1 error generated.
make[1]: *** [Makefile.Armeabi-v7a:932: armeabi-v7a/qt_gsreamer_android.o] Error 1
1 error generated.
make[1]: *** [Makefile.Arm64-v8a:932: arm64-v8a/qt_gsreamer_android.o] Error 1
1 error generated.
make[1]: *** [Makefile.Armeabi-v7a:691: armeabi-v7a/main.o] Error 1
make[1]: Leaving directory '/usr/src/build'
make: *** [Makefile:46: armeabi-v7a-all] Error 2
make: *** Waiting for unfinished jobs....
1 error generated.
make[1]: *** [Makefile.Arm64-v8a:691: arm64-v8a/main.o] Error 1
make[1]: Leaving directory '/usr/src/build'
make: *** [Makefile:60: arm64-v8a-all] Error 2
```

Apparently Qt 5.14+ requires ndk-r20b+

- Qt 5.11 and below use NDK r10e with GCC toolchain.
- Qt 5.12.0 to 5.12.5 and Qt 5.13.0 to 5.13.1, use NDK r19c with android-clang toolchain
- Qt 5.14+, Qt 5.13.2+ and Qt 5.12.6+ use NDK r20b or r21 with android-clang toolchain

Using NDK r20b+ on Cerbero 1.20.6

```bash
[75/84] /vendor/cerbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -target armv7-none-linux-androideabi16 --sysroot /vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm  -o src/libharfbuzz.so src/libharfbuzz.so.p/hb-aat-layout.cc.o src/libharfbuzz.so.p/hb-aat-map.cc.o src/libharfbuzz.so.p/hb-blob.cc.o src/libharfbuzz.so.p/hb-buffer-serialize.cc.o src/libharfbuzz.so.p/hb-buffer.cc.o src/libharfbuzz.so.p/hb-common.cc.o src/libharfbuzz.so.p/hb-draw.cc.o src/libharfbuzz.so.p/hb-face.cc.o src/libharfbuzz.so.p/hb-fallback-shape.cc.o src/libharfbuzz.so.p/hb-font.cc.o src/libharfbuzz.so.p/hb-map.cc.o src/libharfbuzz.so.p/hb-number.cc.o src/libharfbuzz.so.p/hb-ot-cff1-table.cc.o src/libharfbuzz.so.p/hb-ot-cff2-table.cc.o src/libharfbuzz.so.p/hb-ot-color.cc.o src/libharfbuzz.so.p/hb-ot-face.cc.o src/libharfbuzz.so.p/hb-ot-font.cc.o src/libharfbuzz.so.p/hb-ot-layout.cc.o src/libharfbuzz.so.p/hb-ot-map.cc.o src/libharfbuzz.so.p/hb-ot-math.cc.o src/libharfbuzz.so.p/hb-ot-meta.cc.o src/libharfbuzz.so.p/hb-ot-metrics.cc.o src/libharfbuzz.so.p/hb-ot-name.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-arabic.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-default.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-hangul.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-hebrew.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-indic-table.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-indic.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-khmer.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-myanmar.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-thai.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-use-table.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-use.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-vowel-constraints.cc.o src/libharfbuzz.so.p/hb-ot-shape-fallback.cc.o src/libharfbuzz.so.p/hb-ot-shape-normalize.cc.o src/libharfbuzz.so.p/hb-ot-shape.cc.o src/libharfbuzz.so.p/hb-ot-tag.cc.o src/libharfbuzz.so.p/hb-ot-var.cc.o src/libharfbuzz.so.p/hb-set.cc.o src/libharfbuzz.so.p/hb-shape-plan.cc.o src/libharfbuzz.so.p/hb-shape.cc.o src/libharfbuzz.so.p/hb-shaper.cc.o src/libharfbuzz.so.p/hb-static.cc.o src/libharfbuzz.so.p/hb-ucd.cc.o src/libharfbuzz.so.p/hb-unicode.cc.o src/libharfbuzz.so.p/hb-ft.cc.o src/libharfbuzz.so.p/hb-glib.cc.o -Lbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/8.0.7 -L/vendor/cerbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/8.0.7/lib/linux/arm -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/lib/../lib/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm/usr/lib/../lib -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/lib/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm/usr/lib -L/vendor/cerbero/build/dist/android_universal/armv7/lib -L/vendor/cerbero/build/android-ndk-20/libs/armeabi-v7a -Wl,--as-needed -Wl,--no-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libharfbuzz.so -gcc-toolchain /vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64 -fPIC -no-canonical-prefixes -Wl,-no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -Wl,--gc-sections -Wl,--warn-shared-textrel -Wl,--exclude-libs,libatomic.a -Wl,--exclude-libs,libgcc.a -Wl,--exclude-libs,libgcc_real.a -Wl,--exclude-libs,libunwind.a -Wl,--fix-cortex-a8 -Wl,-z,nocopyreloc -fuse-ld=gold -nostdlib++ -nostdlib++ -lc++_shared -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libandroid_support.a -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libunwind.a -Wl,-rpath,/vendor/cerbero/build/dist/android_universal/armv7/lib -Wl,-rpath-link,/vendor/cerbero/build/dist/android_universal/armv7/lib -lm /vendor/cerbero/build/dist/android_universal/armv7/lib/libglib-2.0.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libintl.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libcairo.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libfreetype.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libfontconfig.so -pthread -lstdc++ -Wl,--end-group
FAILED: src/libharfbuzz.so 
/vendor/cerbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -target armv7-none-linux-androideabi16 --sysroot /vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm  -o src/libharfbuzz.so src/libharfbuzz.so.p/hb-aat-layout.cc.o src/libharfbuzz.so.p/hb-aat-map.cc.o src/libharfbuzz.so.p/hb-blob.cc.o src/libharfbuzz.so.p/hb-buffer-serialize.cc.o src/libharfbuzz.so.p/hb-buffer.cc.o src/libharfbuzz.so.p/hb-common.cc.o src/libharfbuzz.so.p/hb-draw.cc.o src/libharfbuzz.so.p/hb-face.cc.o src/libharfbuzz.so.p/hb-fallback-shape.cc.o src/libharfbuzz.so.p/hb-font.cc.o src/libharfbuzz.so.p/hb-map.cc.o src/libharfbuzz.so.p/hb-number.cc.o src/libharfbuzz.so.p/hb-ot-cff1-table.cc.o src/libharfbuzz.so.p/hb-ot-cff2-table.cc.o src/libharfbuzz.so.p/hb-ot-color.cc.o src/libharfbuzz.so.p/hb-ot-face.cc.o src/libharfbuzz.so.p/hb-ot-font.cc.o src/libharfbuzz.so.p/hb-ot-layout.cc.o src/libharfbuzz.so.p/hb-ot-map.cc.o src/libharfbuzz.so.p/hb-ot-math.cc.o src/libharfbuzz.so.p/hb-ot-meta.cc.o src/libharfbuzz.so.p/hb-ot-metrics.cc.o src/libharfbuzz.so.p/hb-ot-name.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-arabic.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-default.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-hangul.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-hebrew.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-indic-table.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-indic.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-khmer.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-myanmar.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-thai.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-use-table.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-use.cc.o src/libharfbuzz.so.p/hb-ot-shape-complex-vowel-constraints.cc.o src/libharfbuzz.so.p/hb-ot-shape-fallback.cc.o src/libharfbuzz.so.p/hb-ot-shape-normalize.cc.o src/libharfbuzz.so.p/hb-ot-shape.cc.o src/libharfbuzz.so.p/hb-ot-tag.cc.o src/libharfbuzz.so.p/hb-ot-var.cc.o src/libharfbuzz.so.p/hb-set.cc.o src/libharfbuzz.so.p/hb-shape-plan.cc.o src/libharfbuzz.so.p/hb-shape.cc.o src/libharfbuzz.so.p/hb-shaper.cc.o src/libharfbuzz.so.p/hb-static.cc.o src/libharfbuzz.so.p/hb-ucd.cc.o src/libharfbuzz.so.p/hb-unicode.cc.o src/libharfbuzz.so.p/hb-ft.cc.o src/libharfbuzz.so.p/hb-glib.cc.o -Lbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/8.0.7 -L/vendor/cerbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/lib64/clang/8.0.7/lib/linux/arm -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/lib/../lib/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm/usr/lib/../lib -L/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/lib/armv7-a/thumb -L/vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm/usr/lib -L/vendor/cerbero/build/dist/android_universal/armv7/lib -L/vendor/cerbero/build/android-ndk-20/libs/armeabi-v7a -Wl,--as-needed -Wl,--no-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libharfbuzz.so -gcc-toolchain /vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64 -fPIC -no-canonical-prefixes -Wl,-no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -Wl,--gc-sections -Wl,--warn-shared-textrel -Wl,--exclude-libs,libatomic.a -Wl,--exclude-libs,libgcc.a -Wl,--exclude-libs,libgcc_real.a -Wl,--exclude-libs,libunwind.a -Wl,--fix-cortex-a8 -Wl,-z,nocopyreloc -fuse-ld=gold -nostdlib++ -nostdlib++ -lc++_shared -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libandroid_support.a -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libunwind.a -Wl,-rpath,/vendor/cerbero/build/dist/android_universal/armv7/lib -Wl,-rpath-link,/vendor/cerbero/build/dist/android_universal/armv7/lib -lm /vendor/cerbero/build/dist/android_universal/armv7/lib/libglib-2.0.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libintl.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libcairo.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libfreetype.so /vendor/cerbero/build/dist/android_universal/armv7/lib/libfontconfig.so -pthread -lstdc++ -Wl,--end-group
/vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/lib/gcc/arm-linux-androideabi/4.9.x/../../../../arm-linux-androideabi/bin/ld.gold: error: cannot find -lc++
clang++: error: linker command failed with exit code 1 (use -v to see invocation)
[76/84] /vendor/cerbero/build/android-ndk-20/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -target armv7-none-linux-androideabi16 --sysroot /vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm -Isrc/libharfbuzz-subset.so.p -Isrc -I../src -I. -I.. -I/vendor/cerbero/build/dist/android_universal/armv7/include/glib-2.0 -I/vendor/cerbero/build/dist/android_universal/armv7/lib/glib-2.0/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/cairo -I/vendor/cerbero/build/dist/android_universal/armv7/include -I/vendor/cerbero/build/dist/android_universal/armv7/include/freetype2 -I/vendor/cerbero/build/dist/android_universal/armv7/include/libpng16 -I/vendor/cerbero/build/dist/android_universal/armv7/include/pixman-1 -fcolor-diagnostics -D_FILE_OFFSET_BITS=64 -Wall -Winvalid-pch -Wnon-virtual-dtor -std=c++11 -Oz -g -DHAVE_CONFIG_H -nostdlib++ -isystem /vendor/cerbero/build/android-ndk-20/sources/cxx-stl/llvm-libc++/include -isystem /vendor/cerbero/build/android-ndk-20/sources/cxx-stl/llvm-libc++/../llvm-libc++abi/include -Wl,--start-group -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libandroid_support.a -isystem /vendor/cerbero/build/android-ndk-20/sources/android/support/include -Wl,/vendor/cerbero/build/dist/android_universal/armv7/lib/libunwind.a -Wl,--end-group -target armv7-none-linux-androideabi16 --sysroot /vendor/cerbero/build/android-ndk-20/platforms/android-16/arch-arm -gcc-toolchain /vendor/cerbero/build/android-ndk-20/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64 -isysroot /vendor/cerbero/build/android-ndk-20/sysroot -isystem /vendor/cerbero/build/dist/android_universal/armv7/include -isystem /vendor/cerbero/build/android-ndk-20/sysroot/usr/include -isystem /vendor/cerbero/build/android-ndk-20/sysroot/usr/include/arm-linux-androideabi -fno-integrated-as -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes -fPIC -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -mthumb -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -DANDROID -DPIC -D__ANDROID_API__=16 -D__ARM_ARCH_7A__ -Wa,--noexecstack -fno-rtti -fno-exceptions -fPIC -pthread -MD -MQ src/libharfbuzz-subset.so.p/hb-subset.cc.o -MF src/libharfbuzz-subset.so.p/hb-subset.cc.o.d -o src/libharfbuzz-subset.so.p/hb-subset.cc.o -c ../src/hb-subset.cc
ninja: build stopped: subcommand failed.

ERROR: Service 'gstreamer-qt' failed to build: The command '/bin/sh -c cd /vendor/cerbero && ./cerbero-uninstalled -c config/cross-android-universal.cbc -v qt5 package gstreamer-1.0' returned a non-zero code: 1
```

It looks like 1.18.6 is working.