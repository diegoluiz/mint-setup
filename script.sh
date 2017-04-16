#!/bin/bash

sudo apt update
sudo apt upgrade 
sudo apt install -y guake synapse zsh git vim virtualbox python-pip vagrant docker.io golang nodejs r-base libjpeg62 redis-tools mpg123 nmap libxml2-utils ruby ruby-dev make gcc

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
mkdir tmp-script
cd tmp-script
rm *

# Downloads and installs Visual Studio Code
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/code_1.11.2-1492070517_amd64.deb 
sudo dpkg -i code_1.11.2-1492070517_amd64.deb 
rm *

# Downloads and installs Chrome 
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm *

# Downloads and installs RStudio
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/rstudio-1.0.136-amd64.deb 
sudo dpkg -i rstudio-1.0.136-amd64.deb 
rm *

# Install Franz
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/Franz-linux-x64-4.0.4.tgz
mkdir franz 
cd franz
tar -xvzf ../Franz-linux-x64-4.0.4.tgz .
cd ..
sudo mv franz /opt/
sudo chown root.root -R /opt/franz
sudo ln -fs /opt/franz/Franz /usr/bin/franz
rmdir franz
rm *

# .gitconfig
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/.gitconfig 
cp -f .gitconfig ~
rm *

# sounds aliases
wget https://raw.githubusercontent.com/diegoluiz/emotion_sounds/master/sounds.sh
cat sounds.sh >> ~/.zshrc
source ~/.zshrc
rm *

cd ..
rmdir tmp-script
