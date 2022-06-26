FROM ubuntu:22.04

WORKDIR /Dev
COPY ./Dockerfiles/Workstation/init.sh /app
RUN bash -c "/app/init.sh"
RUN useradd -s usr/bin/zsh admin
