# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# load user .zshrc configuration file
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# Completion configuration
autoload -Uz compinit
compinit

# Alias
alias ll='ls -l --color=auto'
alias la='ls -la'
alias vi='vim'
alias cp='cp -iv'
alias rm='rm -Iv'
alias grep='grep --color=auto'
alias terminator='terminator -T terminator'
alias maxterm='terminator -m -T terminator'

# Ctrl-r to search history
bindkey '^R' history-incremental-search-backward

# Variable definitions
export EDITOR="vim"
export PROMPT="%B%F{blue}%n@%m%k %(?..%F{blue}[%F{253}%?%F{blue}] )%B%F{cyan}%1~%F{cyan} %# %b%f%k"

# zsh options
# don't need cd to go to a directory
setopt AUTO_CD

# no remove postfix slash of command line
setopt noautoremoveslash

# ignore duplication command history list
setopt hist_ignore_dups

# share command history data
setopt share_history

# set correction for commands
setopt correct

# report time command lasted if takes more than 5 sec
REPORTTIME=5

autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%r/%S [%b] %m%u%c "
zstyle ':vcs_info:*' enable git
precmd() {
    vcs_info
}

setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}%# '
