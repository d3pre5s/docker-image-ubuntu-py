FROM ubuntu:20.04

COPY entrypoint.sh /

RUN apt update && apt install -y python3-pip && \
    apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/

ENTRYPOINT ["/entrypoint.sh"]
