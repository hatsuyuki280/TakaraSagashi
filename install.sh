#!/bin/bash
## install
sudo su - || su -

apt install git python3 python3-pip python3-bs4 python3-parse python3-lxml python3-flask python3-dev python3-uwsgi -y 1&2> /dev/none

pip3 install bs4 parse lxml flask uwsgi

pip3 install --upgrade virtualenv
pip3 install --upgrade pip setuptools

mkdir -p /yuki/soft/NekoSearch && cd /yuki/soft/NekoSearch
git clone https://github.com/hatsuyuki280/TakaraSagashi.git

virtualenv -p $(python3 -V | grep -o 3..) .env

cd surugayaparser
