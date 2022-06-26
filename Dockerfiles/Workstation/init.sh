#!/bin/bash

apt update && apt upgrade -y
apt install sudo nano curl git zsh -y
unminimize
git clone https://github.com/emon5122/Template.git
apt install python3 python3-pip golang-go -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
 curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor |  tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" |  tee /etc/apt/sources.list.d/yarn.list
apt-get update &&  apt-get install yarn
