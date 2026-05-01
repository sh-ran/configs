export ZSH=$HOME/.zsh

autoload -Uz compinit
compinit

export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

source $ZSH/helper/theme.zsh
source $ZSH/helper/completion.zsh
source $ZSH/helper/history.zsh

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath=("$ZSH/plugins/zsh-completions/src" $fpath)

alias c='clear'
alias rmr='rm -r'
alias dnf='sudo dnf'
alias nv='nvim'

source $ZSH/neo.zsh-theme

# Case-insensitive (all), partial-word, and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Group results by category
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

# Use arrow keys to navigate the menu
zstyle ':completion:*' menu select

# Complete . and ..
zstyle ':completion:*' special-dirs true

export PATH=$PATH:$HOME/.local/bin/
