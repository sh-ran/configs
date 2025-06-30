# zmodload zsh/zprof # uncomment 1st and last line to check zsh startup times
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="sharan"
ZSH_THEME="wezm+"

zstyle ':omz:plugins:nvm' lazy yes
plugins=(git nvm)
# zstyle ':omz:plugins:nvm' autoload yes

source $ZSH/oh-my-zsh.sh

alias ls="nnn -de"
alias lsa="nnn -Hde"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# zprof
