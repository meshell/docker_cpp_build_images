# docker C++ build images

Dockerfiles to create container images for building C++ projects with
cmake (version 3.10), different gcc and clang compiler versions and tools
like cppcheck and clang-tidy (clang images only).

The images are uploaded to Dockerhub:

#### GCC
- [meshell/gcc46: gcc 4.6](https://hub.docker.com/r/meshell/gcc46/)
- [meshell/gcc48: gcc 4.8](https://hub.docker.com/r/meshell/gcc48/)
- [meshell/gcc49: gcc 4.9](https://hub.docker.com/r/meshell/gcc49/)
- [meshell/gcc52: gcc 5.2](https://hub.docker.com/r/meshell/gcc52/)
- [meshell/gcc53: gcc 5.3](https://hub.docker.com/r/meshell/gcc53/)
- [meshell/gcc54: gcc 5.4](https://hub.docker.com/r/meshell/gcc54/)
- [meshell/gcc55: gcc 5.5](https://hub.docker.com/r/meshell/gcc54/)
- [meshell/gcc62: gcc 6.2](https://hub.docker.com/r/meshell/gcc62/)
- [meshell/gcc63: gcc 6.3](https://hub.docker.com/r/meshell/gcc63/)
- [meshell/gcc64: gcc 6.4](https://hub.docker.com/r/meshell/gcc64/)
- [meshell/gcc72: gcc 7.2](https://hub.docker.com/r/meshell/gcc72/)

#### Clang
- [meshell/clang38: clang 3.8](https://hub.docker.com/r/meshell/clang38/)
- [meshell/clang39: clang 3.9](https://hub.docker.com/r/meshell/clang39/)
- [meshell/clang40: clang 4.0](https://hub.docker.com/r/meshell/clang40/)
- [meshell/clang50: clang 5.0](https://hub.docker.com/r/meshell/clang50/)
-
Use the images to build your c++ project in travis-ci
======================================================

These Docker images can be used to build your project using the travis-ci CI service.
