FROM carlonluca/qt-dev:5.15.8-lts-lgpl

RUN apt update && \
    apt install -y \
        python3-dev python3-distro python3-setuptools \
        autotools-dev automake autoconf autopoint \
        libtool \
        g++ \
        make cmake pkg-config \
        bison \
        flex \
        nasm \
        libxv-dev \
        libx11-dev \
        libx11-xcb-dev \
        libpulse-dev \
        gettext \
        build-essential \
        libxext-dev \
        libxi-dev \
        x11proto-record-dev \
        libxrender-dev \
        libgl1-mesa-dev \
        libxfixes-dev \
        libxdamage-dev \
        libxcomposite-dev \
        libasound2-dev \
        build-essential \
        gperf \
        wget \
        libxtst-dev \
        libxrandr-dev \
        libglu1-mesa-dev \
        libegl1-mesa-dev \
        git \
        xutils-dev \
        intltool \
        ccache \
        libssl-dev

ENV QT_ANDROID_ROOT_DIR=/opt/Qt-android-5.15.8-lts-lgpl
ENV QMAKE=/opt/Qt-android-5.15.8-lts-lgpl/bin/qmake
ENV OPENSSL_ROOT_DIR=/opt/android_openssl/ssl_1.1
WORKDIR /usr/src

# 1.20.6
RUN git clone https://gitlab.freedesktop.org/gstreamer/cerbero.git /vendor/cerbero && \
    cd /vendor/cerbero && git checkout 1.18.6

# Replace NDK version and checksums
RUN sed -i "s|NDK_VERSION = 'r21'|NDK_VERSION = 'r20b'|" /vendor/cerbero/cerbero/bootstrap/android.py && \
    sed -i "/NDK_CHECKSUMS = {/a \    'android-ndk-r20b-linux-x86_64.zip': '8381c440fe61fcbb01e209211ac01b519cd6adf51ab1c2281d5daad6ca4c8c8c'," /vendor/cerbero/cerbero/bootstrap/android.py && \
    sed -i "s|'android-ndk-r21-linux-x86_64.zip':.*|'android-ndk-r20b-darwin-x86_64.zip': '4d760db479de1b6e54f5da2fe894a35f120ad4d6ccf4b989254940183ca00c08',|" /vendor/cerbero/cerbero/bootstrap/android.py && \
    sed -i "s|'android-ndk-r21-darwin-x86_64.zip':.*|'android-ndk-r20b-windows-x86_64.zip': 'b9dd083aae7a29c887876ffb3840d4b192dee1a05ad9dbf545f2facd00b4e821',|" /vendor/cerbero/cerbero/bootstrap/android.py && \
    sed -i "s|'android-ndk-r21-windows-x86_64.zip':.*|'android-ndk-r20b-windows-x86.zip': '58a79270e419c299c05084ec06d36c117e26b038b38bcde17af4ec3c45c29f5c',|" /vendor/cerbero/cerbero/bootstrap/android.py

# 1.20.6 only
# RUN sed -i "s|https://dl.google.com/android/repository/android-ndk-r21-linux-x86_64.zip|https://dl.google.com/android/repository/android-ndk-r20b-linux-x86_64.zip|" /vendor/cerbero/ci/docker_android_setup.sh
RUN sed -i "s|android-ndk-21|android-ndk-20|" /vendor/cerbero/config/android.config

# ANDROID_SDK_ROOT=/opt/android-sdk is default (31)
ENV ANDROID_NDK_ROOT=/vendor/cerbero/build/android-ndk-20
ENV NDK_ROOT=/vendor/cerbero/build/android-ndk-20

RUN git config --global http.sslverify false
RUN git config --global user.name "GStreamer"
RUN git config --global user.email "cerbero@gstreamer.freedesktop.org"
RUN git config --global --add safe.directory '*'

RUN cd /vendor/cerbero && ./cerbero-uninstalled -c config/cross-android-universal.cbc bootstrap
RUN cd /vendor/cerbero && ./cerbero-uninstalled -c config/cross-android-universal.cbc -v qt5 package gstreamer-1.0

ENTRYPOINT [ "" ]
