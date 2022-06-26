FROM ubuntu:22.04

WORKDIR /app
COPY ./init.sh /app
RUN bash -c "/app/init.sh"
RUN useradd -s usr/bin/zsh admin
