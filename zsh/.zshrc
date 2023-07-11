source "${HOME}/.zgenom/zgenom.zsh"
zgenom autoupdate
if ! zgenom saved; then
	zgenom load zdharma-continuum/fast-syntax-highlighting
	zgenom load jeffreytse/zsh-vi-mode
fi

export EDITOR=nvim

autoload -Uz compinit; compinit
autoload -Uz vcs_info

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY_TIME
setopt autocd
setopt prompt_subst
setopt list_ambiguous

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*' insert false
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*'

# vcs_info zstyles
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' stagedstr "%F{blue}"
zstyle ':vcs_info:*' formats "%F{green}%c%u%m %b %c%u%m"

alias ls='exa --icons'
alias ll='ls -l'
alias la='ls -la'
alias g='git'
alias gst='git status'
alias gad='git add'
alias gcm='git commit'
alias gdf='git diff'
alias glg='git log --oneline'

alias dev='cd ~/devel'
alias doc='cd ~/Documents'
alias notas='cd ~/Documents/Notas'

precmd () { vcs_info }
PROMPT=$'%B%F{cyan}%~ %m ${vcs_info_msg_0_} \n%b%f%# '

PATH=$PATH:~/.local/bin

if [ "$(tty)" = "/dev/tty1" ]; then
	export XDG_SESSION_TYPE=wayland
	export XDG_CURRENT_DESKTOP="sway"
	export XDG_SESSION_DESKTOP=sway
	/usr/libexec/xdg-desktop-portal-wlr -r
	dbus-run-session sway
fi
