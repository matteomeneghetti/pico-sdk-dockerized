FROM ubuntu:latest

WORKDIR /workspace

RUN apt update && apt upgrade -y && \
    apt install git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib python3 build-essential -y

ENV PICO_SDK_PATH=/opt/pico_sdk

RUN git clone --recurse-submodules https://github.com/raspberrypi/pico-sdk $PICO_SDK_PATH 

CMD ["tail", "-f", "/dev/null"]
