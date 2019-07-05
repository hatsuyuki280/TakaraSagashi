#!/bin/bash
## install
sudo su - || su -

apt install git python3 python3-pip python3-dev nginx -y 1&2> /dev/none

pip3 install --upgrade pip3 setuptools
pip3 install pipenv

pipenv update
pipenv install bs4 parse lxml flask uwsgi urllib3

mkdir -p /yuki/soft/NekoSearch && cd /yuki/soft/NekoSearch
mkdir surugayaparser
wget https://github.com/hatsuyuki280/surugayaparser/raw/master/surugayaparser/surugayaparser.py -O- ./surugayaparser/surugayaparser.py
wget https://github.com/hatsuyuki280/surugayaparser/raw/master/surugayaparser/__init__.py -O- ./surugayaparser/__init__.py


