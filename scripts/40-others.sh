#!/bin/bash

echo install Franz
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb
sudo dpkg -i franz_5.0.0-beta.18_amd64.deb
sudo rm franz_5.0.0-beta.18_amd64.deb
