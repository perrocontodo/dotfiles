# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# Remember to change the following, if needed:
zstyle :compinstall filename '/home/dc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alias
alias ll='ls -l'
alias la='ls -la'
alias vi='vim'
alias cp='cp -iv'
alias rm='rm -Iv'
alias grep='grep --colour=auto'

# Ctrl-r to search history
bindkey '^R' history-incremental-search-backward

# Variable definitions
export EDITOR="vim"
export PROMPT="%B%F{blue}%n@%m%k %(?..%F{blue}[%F{253}%?%F{blue}] )%B%F{cyan}%1~%F{cyan} %# %b%f%k"

# zsh options
# don't need cd to go to a directory
setopt AUTO_CD
