# https://mcr.microsoft.com/v2/devcontainers/cpp/tags/list
# https://github.com/devcontainers/images/tree/main/src/cpp/history
# https://launchpad.net/ubuntu
ARG GET_ALL_NON_BREAKING_CHANGES=1
ARG ONLY_GET_FIXES=1.2
FROM mcr.microsoft.com/devcontainers/cpp:${GET_ALL_NON_BREAKING_CHANGES}-ubuntu-24.04


ARG REINSTALL_CMAKE_VERSION_FROM_SOURCE="4.1.2"

# Optionally install the cmake for vcpkg
COPY ./reinstall-cmake.sh /tmp/

RUN if [ "${REINSTALL_CMAKE_VERSION_FROM_SOURCE}" != "none" ]; then \
        chmod +x /tmp/reinstall-cmake.sh && /tmp/reinstall-cmake.sh ${REINSTALL_CMAKE_VERSION_FROM_SOURCE}; \
    fi \
    && rm -f /tmp/reinstall-cmake.sh

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# dev
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        gcc-14 g++-14 \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-14 1 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-14 1

# tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        ascii \
        cmake-format \
        dialog \
        expect \
        feh \
        file \
        fish \
        hwinfo \
        mc \
        netpbm \
        rename \
        scrot \
        shellcheck \
        tree \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# audio
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        alsa-base \
        alsa-utils \
        beep \
        libsndfile1-dev \
        pulseaudio \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# BMX-NG
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    # build-essential \
    # gcc \
    # g++ \
    libglu1-mesa-dev \
    libasound2-dev \
    libfreetype6-dev \
    libxpm-dev \
    libxft-dev \
    libxxf86vm-dev \
    libpulse-dev \
    libopenal-dev \
    # libwebkit2gtk-4.0-dev \
    libwebkit2gtk-4.1-dev \
    libgtk-3-dev \
    unzip \
    wget \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*