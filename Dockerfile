FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install cmake \
    build-essential \
    libopencv-dev \
    python3-dev \
    -y