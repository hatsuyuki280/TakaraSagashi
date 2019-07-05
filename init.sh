#!/bin/bash

## init
sudo su - || su -

apt install git python3 python3-pip nginx -y 1&2> /dev/none

pip3 install --upgrade pip setuptools
pip3 install pipenv
pipenv update