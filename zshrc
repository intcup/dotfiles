PATH=$PATH:$HOME/.local/bin
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY_TIME

export EDITOR=nvim
export INTEL_DEBUG=reemit

setopt autocd
setopt prompt_subst
setopt GLOB_COMPLETE
setopt list_ambiguous

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arttec/.zshrc'


zstyle ':completion:*' menu select
zstyle ':completion:*' insert false
zstyle ':completion:*' keep-prefix true
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}%d%f'
zstyle ':completion:*' group-name ''

autoload -Uz compinit; compinit
autoload -Uz vcs_info
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{3}"
zstyle ':vcs_info:git:*' unstagedstr "%F{1}"
zstyle ':vcs_info:git:*' formats "%F{2}%c%u%b "
precmd() {
    vcs_info
}

alias ls='ls --color'
alias ll='ls -l'
alias la='ls -la'
alias gst='git status'
alias gad='git add'
alias gcm='git commit'
alias gdf='git diff'

alias dev='cd ~/devel'

PROMPT='%B%F{2}%n%f@%F{3}%m %F{4}%~ ${vcs_info_msg_0_}
%b%f%# '
