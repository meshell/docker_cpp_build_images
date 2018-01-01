FROM ubuntu:zesty

MAINTAINER Michel Estermann <estermann.michel@gmail.com>

ENV CLANG_VERSION=3.8
ENV CMAKE_VERSION=3.10
ENV CMAKE_NAME=cmake-3.10.0-Linux-x86_64
ENV CC=clang CXX=clang++
ENV CMAKE_C_COMPILER=clang CMAKE_CXX_COMPILER=clang++

RUN dpkg --add-architecture i386 && rm -rf /var/lib/apt/lists/* && apt-get -qq update
# Install Clang and dependencies
RUN apt-get -qq install -y sudo wget git clang-${CLANG_VERSION} clang-tidy-${CLANG_VERSION} llvm-${CLANG_VERSION} llvm-${CLANG_VERSION}-dev llvm-${CLANG_VERSION}-runtime llvm make valgrind libc6-dev-i386 g++-multilib libgmp-dev libmpfr-dev libmpc-dev nasm dh-autoreconf libffi-dev libssl-dev ninja-build libc++-dev libc++-dev:i386 libc++abi-dev libc++abi-dev:i386
RUN apt-get -qq install -y cppcheck
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-${CLANG_VERSION} 100
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-${CLANG_VERSION} 100
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang-${CLANG_VERSION} 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-${CLANG_VERSION} 100
RUN update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-${CLANG_VERSION} 100
# Install CMake
RUN wget https://cmake.org/files/v${CMAKE_VERSION}/${CMAKE_NAME}.tar.gz --no-check-certificate -q
RUN tar -xzf ${CMAKE_NAME}.tar.gz
RUN cp -fR ${CMAKE_NAME}/* /usr
RUN rm -rf ${CMAKE_NAME}
RUN rm ${CMAKE_NAME}.tar.gz
