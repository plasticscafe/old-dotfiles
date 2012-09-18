##############################
# for .bashrc
# source ~/.dotfiles/bash
##############################
source ~/.dotfiles/git/git-completion.sh
source ~/.dotfiles/git/git-prompt.sh

PS1='\u\[\e[0;37m@\[\e[0m\]\h \W\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[0m\]\$ '
