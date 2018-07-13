#!/bin/bash

echo generating new ssh keys
#ssh-keygen 

echo apt update and upgrade
sudo apt update
sudo apt upgrade -y

echo install some packages
sudo apt install -y git vim python-pip python3-pip ruby ruby-dev make gcc dict devhelp

ls scripts | while read f
do
    echo Processing $f
    sudo bash scripts/$f
done
