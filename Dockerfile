FROM debian:jessie

RUN apt-get update && apt-get install -y \ 
    build-essential \
    zlib1g-dev \
    libpcre3 \
    libpcre3-dev \
    unzip \
    wget \
    checkinstall