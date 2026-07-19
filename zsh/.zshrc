export ZSH=$HOME/.zsh

setopt PROMPT_SUBST

autoload -Uz compinit
compinit

export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath=("$ZSH/plugins/zsh-completions/src" $fpath)

alias c='clear'
alias rmr='rm -r'
alias dnf='sudo dnf'
alias lsa='ls -al'
alias aa='tmux a'

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin/"
source $ZSH/plugins/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.zsh/p10k.zsh ]] || source ~/.zsh/p10k.zsh
