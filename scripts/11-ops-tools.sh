#!/bin/bash

sudo apt install -y vagrant docker.io redis-tools nmap libxml2-utils htop

echo install terraform
wget https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip?_ga=2.8038967.406755400.1523051101-1822120829.1523051101
unzip terraform_0.11.6_linux_amd64.zip?_ga=2.8038967.406755400.1523051101-1822120829.1523051101
mv terraform /usr/local/bin/

echo install cloud clis
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update
apt-get install -y google-cloud-sdk google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-python-extras google-cloud-sdk-app-engine-java google-cloud-sdk-app-engine-go google-cloud-sdk-datalab google-cloud-sdk-datastore-emulator google-cloud-sdk-pubsub-emulator google-cloud-sdk-cbt google-cloud-sdk-bigtable-emulator kubectl
pip install awscli --upgrade --user
echo 'export PATH=~/.local/bin:$PATH' >> ~/.zshrc
