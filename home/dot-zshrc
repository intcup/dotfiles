source "${HOME}/.zgenom/zgenom.zsh"
zgenom autoupdate
if ! zgenom saved; then
	zgenom load zdharma-continuum/fast-syntax-highlighting
	zgenom load aperezdc/zsh-fzy
fi

export EDITOR=nvim

autoload -Uz compinit; compinit
autoload edit-command-line; zle -N edit-command-line
autoload -Uz vcs_info

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY_TIME
setopt autocd
setopt prompt_subst
setopt list_ambiguous
setopt noglob

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*' insert false
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*'

# vcs_info zstyles
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}'
zstyle ':vcs_info:*' stagedstr '%F{yellow}'
zstyle ':vcs_info:*' formats '%F{green}%c%u %b'

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

# fzy config
zstyle :fzy:file command fd . $BUFFER
zstyle :fzy:cd command fd -t d

bindkey -v
bindkey -M vicmd v edit-command-line
bindkey '^F' fzy-file-widget

precmd () { vcs_info }
PROMPT=$'%B%F{cyan}%~ ${vcs_info_msg_0_} \n%b%f%# '
