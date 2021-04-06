# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arttec/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color'
alias ll='ls -l'

PROMPT="%B%F{2}%n %F{3}%m %F{4}%~
%b%f%# "
