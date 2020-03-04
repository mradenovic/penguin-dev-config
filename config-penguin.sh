#! /bin/bash

sudo apt update
sudo apt dist-upgrade -y

# install nvm and expo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install --lts
npm install -g expo-cli

# add yarn repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# install yarn
sudo apt update && sudo apt install --no-install-recommends yarn -y

# install and config simple-scan
sudo apt install simple-scan -y
sudo echo -e "# Add ET-2550 scanner\nnet 192.168.0.12\n" | sudo tee -a /etc/sane.d/epson2.conf

# install nano
sudo apt install nano -y
 
# sets up Git with your name
git config --global user.name "Mischa Radenovic"
 
# sets up Git with your email
git config --global user.email "miroslav.radenovic@gmail.com"
 
# makes sure that Git output is colored
git config --global color.ui auto
 
# displays the original state in a conflict
git config --global merge.conflictstyle diff3
 
# sets up Git editor
git config --global core.editor "nano"
 
git config --list

curl -sL https://raw.githubusercontent.com/mradenovic/penguin-dev-config/master/config-git-completion.sh | bash
 

# add vs code repo
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# install vscode
sudo apt update && sudo apt install code -y

