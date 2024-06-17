### Build libraries
FROM debian:bookworm AS build_base
RUN mkdir -p /sources && mkdir -p /build
RUN apt update -y &&\ 
    apt install git make cmake build-essential -y 

# Build stuff example
# RUN git clone --recursive -b 'master' https://github.com/anushauskas/cmake-cpack-example.git /sources/cmake-cpack-example
# WORKDIR /build
# RUN cmake /sources/cmake-cpack-example -DCMAKE_CXX_STANDARD=17 -DCMAKE_BUILD_TYPE=Release && make package

# devcontainer
FROM build_base as devcontainer
RUN apt-get install gdb -y

