FROM ubuntu:20.04

LABEL vendor1="DeusOps"
LABEL vendor2="Konstantin Deepezh aka D3pRe5s"

RUN apt update && apt install -y python3-pip && \
    apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
