FROM ubuntu:latest

WORKDIR /usr/src/Sairem-ces362
#COPY . /usr/src/Sairem-ces362

ARG DEBIAN_FRONTEND=noninteractive
ARG CC=gcc
ARG CXX=THIS_IS_THE_CORRECT_ONE

RUN echo "hello, im in the container"

#RUN apt-get update && \
#    apt-get install -y software-properties-common && \
#    apt-get install -y python3-pip moreutils cmake gcovr gcc ccache sudo build-essential tar curl git && \
#    pip install conan ninja
#
#RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
#USER docker
#
#RUN cd /usr/src/Sairem-ces362 && \
#    cmake \
#      -S . \
#      -B ./.build \
#      -G Ninja \
#      -D CMAKE_BUILD_TYPE:STRING=Release \
#      -D CMAKE_C_COMPILER_LAUNCHER=ccache \
#      -D CMAKE_CXX_COMPILER_LAUNCHER=ccache \
#      -D WARNING_AS_ERRORS=true \
#      -D ENABLE_STD_PCH=false \
#      -D ENABLE_PCH=false \
#      -D ENABLE_STATIC_ANALYSIS=false \
#      -D ENABLE_CPPCHECK=false \
#      -D ENABLE_CLANG_TIDY=false \
#      -D ENABLE_SANITIZERS=false \
#      -D ENABLE_SANITIZER_ADDRESS=false \
#      -D ENABLE_SANITIZER_LEAK=false \
#      -D ENABLE_SANITIZER_UNDEFINED_BEHAVIOR=false \
#      -D ENABLE_TESTING=true \
#      -D ENABLE_COVERAGE=true \
#      -D ENABLE_UNIT_TESTING=true \
#      -D ENABLE_BENCHMARK=false \
#      -D ENABLE_FUZZ_TESTING=false \
#      -D RUN_UNIT_TESTS=false \
#      -D XRN_AS_BINARY=true \
#      -D XRN_AS_STATIC_LIBRARY=false \
#      -D XRN_AS_SHARED_LIBRARY=false && \
#    cmake --build ./.build --config Release && \
#    rm -rf /var/lib/apt/lists/* && \
#    rm -rf archive.tar.gz
