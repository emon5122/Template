#!/bin/bash

apt update && apt upgrade -y
apt install sudo nano curl git zsh -y
unminimize
git clone https://github.com/emon5122/Template.git
apt install python3 python3-pip golang-go -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
