# History settings
export HISTFILE="$HOME/.bash_history"
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups:erasedups

# Append to history instead of overwriting
shopt -s histappend

# Git branch info for prompt
_git_prompt() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

    local unstaged='' staged=''
    if ! git diff --no-ext-diff --quiet 2>/dev/null; then
        unstaged='*'
    fi
    if ! git diff --no-ext-diff --cached --quiet 2>/dev/null; then
        staged='+'
    fi

    echo "(${branch}${unstaged}${staged})"
}

# Prompt: default bash prompt + git status appended
_build_prompt() {
    PS1="\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[33m\]\$(_git_prompt)\[\e[0m\]\$ "
}
PROMPT_COMMAND=_build_prompt

# Plugins (bash equivalents)
# zsh-autosuggestions → bash-preexec + fzf history, or just enable readline history search
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# zsh-syntax-highlighting → not available natively; install 'bash-syntax-highlighting' if desired
# zsh-completions → bash-completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Case-insensitive completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

# Colors
export TERM=xterm-256color
export COLORTERM=truecolor
[ -x /usr/bin/dircolors ] && eval "$(dircolors -b)"

# Aliases
alias c='clear'
alias rmr='rm -r'
alias dnf='sudo dnf'
alias nv='nvim'
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# PATH
export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin/"
