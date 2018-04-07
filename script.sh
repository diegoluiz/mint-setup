#!/bin/bash

echo generating new ssh keys
ssh-keygen 

echo apt update and upgrade
sudo apt update
sudo apt upgrade -y

echo install some packages
sudo apt install -y synapse zsh git vim python-pip python3-pip vagrant docker.io golang r-base libjpeg62 redis-tools mpg123 nmap libxml2-utils ruby ruby-dev make gcc dict devhelp htop

echo install oh my zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo install terraform
wget https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip?_ga=2.8038967.406755400.1523051101-1822120829.1523051101
unzip terraform_0.11.6_linux_amd64.zip?_ga=2.8038967.406755400.1523051101-1822120829.1523051101
sudo mv terraform /usr/local/bin/

echo install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.zshrc
nvm install 8.10.0
npm install -g --upgrade npm

echo installs Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

echo install cloud clis
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-cloud-sdk google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-python-extras google-cloud-sdk-app-engine-java google-cloud-sdk-app-engine-go google-cloud-sdk-datalab google-cloud-sdk-datastore-emulator google-cloud-sdk-pubsub-emulator google-cloud-sdk-cbt google-cloud-sdk-bigtable-emulator kubectl
pip install awscli --upgrade --user
echo 'export PATH=~/.local/bin:$PATH' >> ~/.zshrc

echo installs RStudio
wget https://download1.rstudio.org/rstudio-xenial-1.1.442-amd64.deb
sudo dpkg -i rstudio-xenial-1.1.442-amd64.deb 
sudo rm rstudio-xenial-1.1.442-amd64.deb 

echo install Franz
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.17/franz_5.0.0-beta.17_amd64.deb
sudo dkpg -i franz_5.0.0-beta.17_amd64.deb
sudo rm franz_5.0.0-beta.17_amd64.deb

echo copy .gitconfig
wget https://raw.githubusercontent.com/diegoluiz/mint-setup/master/.gitconfig 
mv .gitconfig ~
