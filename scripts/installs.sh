#!/bin/bash
sudo apt update
sudo apt install -y curl jq

#docker
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
# newgrp docker may be needed

#compose
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

#nvm
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc

#installation of node/npm & example commands
nvm install node
nvm install 12.18.3

nvm ls 
nvm ls-remote
nvm use 11.2.11

#install Angular
npm uninstall -g angular-cli @angular/cli
npm cache clean --force
npm install -g @angular/cli@version

#Dependency install examples
npm install --save-dev @angular/cli@latest
npm install --legacy-peer-deps @angular/cli@version
npm install 


