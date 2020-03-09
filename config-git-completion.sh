#! /bin/bash

# store completion scripts
CONFIG_DIR=~/.git-terminal-config
rm -rf ${CONFIG_DIR}
mkdir ${CONFIG_DIR}
curl -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ${CONFIG_DIR}/git-completion.bash
curl -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-promp.sh -o ${CONFIG_DIR}/git-prompt.sh

# append script to existing .bashrc
curl -sSL https://raw.githubusercontent.com/mradenovic/penguin-dev-config/master/.bashrc | tee -a ~/.bashrc