#! /bin/bash

sudo apt update
sudo apt dist-upgrade -y

# add vs code repo
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# install vscode
sudo apt update && sudo apt install code -y

# install nvm and expo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# install nano and config git
sudo apt install nano -y

git config --global user.name "Mischa Radenovic"
git config --global user.email "miroslav.radenovic@gmail.com"
git config --global color.ui auto
git config --global merge.conflictstyle diff3
git config --global core.editor "nano"
 
git config --list

# config git completion
curl -sL https://raw.githubusercontent.com/mradenovic/penguin-dev-config/master/config-git-completion.sh | bash
 
