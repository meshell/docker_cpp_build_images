FROM ubuntu:yakkety

MAINTAINER Michel Estermann <estermann.michel@gmail.com>

ENV CMAKE_VERSION=3.10
ENV CMAKE_NAME=cmake-3.10.0-Linux-x86_64

RUN dpkg --add-architecture i386
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get -qq install -y sudo build-essential wget git vim libc6-dev-i386 g++-multilib nasm dh-autoreconf valgrind ninja-build libffi-dev libssl-dev
RUN apt-get -qq install -y cppcheck

# Install CMake
RUN wget https://cmake.org/files/v${CMAKE_VERSION}/${CMAKE_NAME}.tar.gz --no-check-certificate -q
RUN tar -xzf ${CMAKE_NAME}.tar.gz
RUN cp -fR ${CMAKE_NAME}/* /usr
RUN rm -rf ${CMAKE_NAME}
RUN rm ${CMAKE_NAME}.tar.gz
