#!/bin/bash
## install
sudo su - || su -

apt install git python3 python3-pip python3-dev -y 1&2> /dev/none

pip3 install --upgrade pip3 setuptools
pip3 install pipenv

pipenv update
pipenv install bs4 parse lxml flask uwsgi

mkdir -p /yuki/soft/NekoSearch && cd /yuki/soft/NekoSearch
wget 

cd surugayaparser
