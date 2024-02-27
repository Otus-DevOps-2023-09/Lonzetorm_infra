#!/bin/sh
sleep 2m
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
sleep 1m
sudo apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
