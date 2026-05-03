export ZSH=$HOME/.zsh

setopt PROMPT_SUBST

autoload -Uz compinit
compinit

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

precmd() { vcs_info }

PROMPT='%F{green}%c%F{yellow}${vcs_info_msg_0_}%f ❯ '
RPROMPT='%F{white}%@%f'

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
alias nv='nvim'

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin/"
