#!/bin/bash

## init
sudo su - || su -

apt install git python3 python3-pip

pip3 install --upgrade pip setuptools

virtualenv -p $(python3 -V | grep -o 3..) .env