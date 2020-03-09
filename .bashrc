
# Config git terminal
#
# This file should be appended to original .bashrc after
# completion scripts are coppied to .git-terminal-config.
# (https://github.com/git/git/tree/master/contrib/completion)

# Enable tab completion
source ~/.git-terminal-config/git-completion.bash

# Change command prompt
source ~/.git-terminal-config/git-prompt.sh

# colors!
cyan="\[\033[38;05;38m\]"
green="\[\033[01;32m\]"
blue="\[\033[01;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$green\u$cyan\$(__git_ps1)$blue \W$ $reset"
