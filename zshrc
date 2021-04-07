# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
setopt vi
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arttec/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color'
alias ll='ls -l'

# Plugin
_plugdir=$HOME/.zshplugins
! test -d $_plugdir && mkdir $_plugdir

plug(){
	_repo=$1
	_name=$(echo $_repo | sed 's/.*\///g')
	_url="http://github.com/$_repo"
	! test -d $_plugdir/$_name && git clone $_url $_plugdir/$_name;
	source $_plugdir/$_name/$(echo $_name | sed 's/\..*//g').zsh
}

plug "zsh-users/zsh-syntax-highlighting.git"
plug "zsh-users/zsh-history-substring-search"

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

PROMPT="%B%F{2}%n %F{3}%m %F{4}%~
%b%f%# "
