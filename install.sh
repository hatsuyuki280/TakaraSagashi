#!/bin/bash



## init
sudo su - || su -

apt install git python3 pip3 python pip python-bs4 python3-bs4 python-parse python3-parse python-lxml python3-lxml python-flask python3-flask python3-dev python-dev python-uwsgi python3-uwsgi -y 1&2> /dev/none

pip install bs4 parse lxml flask uwsgi
pip3 install bs4 parse lxml flask uwsgi

pip install --upgrade virtualenv
pip3 install --upgrade virtualenv
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools

mkdir -p /yuki/soft/NekoSearch && cd /yuki/soft/NekoSearch
git clone https://github.com/hatsuyuki280/TakaraSagashi.git

virtualenv -p $(python3 -V | grep -o 3..) .env

cd surugayaparser
