# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"

plugins=(git command-not-found brew fasd osx npm cp z github vagrant )

source $ZSH/oh-my-zsh.sh

# Aliases
alias grep='grep --color=auto'
alias df='df -H'

