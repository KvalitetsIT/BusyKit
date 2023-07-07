FROM debian:stable

RUN apt update && apt upgrade -y && \
    apt install -y wget curl telnet dnsutils nano less vim iputils-ping jq

RUN useradd -rm -d /home/kit -g root -G sudo -u 1001 kit
USER kit
WORKDIR /home/kit
