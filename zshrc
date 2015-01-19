# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alias
alias ll='ls -l'
alias la='ls -la'
alias vi='vim'

# Ctrl-r to search history
bindkey '^R' history-incremental-search-backward

