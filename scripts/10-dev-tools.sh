#!/bin/bash

sudo apt install -y golang

echo install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.zshrc
nvm install 8.10.0
npm install -g --upgrade npm

echo installs Visual Studio Code
wget https://az764295.vo.msecnd.net/stable/7c7da59c2333a1306c41e6e7b68d7f0caa7b3d45/code_1.23.0-1525361119_amd64.deb
sudo dpkg -i code_1.23.0-1525361119_amd64.deb
rm code_1.23.0-1525361119_amd64.deb

echo install R
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base r-base-dev

echo install RStudio
wget https://download1.rstudio.org/rstudio-xenial-1.1.442-amd64.deb
sudo dpkg -i rstudio-xenial-1.1.442-amd64.deb 
sudo rm rstudio-xenial-1.1.442-amd64.deb 

echo copy .gitconfig
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/.gitconfig 
mv .gitconfig ~
