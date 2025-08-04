FROM debian:stable

RUN apt update && apt upgrade -y && \
    apt install -y wget curl telnet dnsutils nano less vim iputils-ping jq rsync git unzip && \
    rm -rf /var/lib/apt/lists/*

RUN useradd --user-group --system --create-home --no-log-init --uid 1001 kit
USER 1001
WORKDIR /home/kit
