FROM ubuntu:20.04

RUN apt update && apt install -y python3-pip && \
    apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
