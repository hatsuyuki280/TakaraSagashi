#!/bin/bash

## init
sudo su - || su -

apt install git python3 python3-pip

pip3 install --upgrade pip3 setuptools
pip3 install pipenv
pipenv update


virtualenv -p $(python3 -V | grep -o 3..) .env