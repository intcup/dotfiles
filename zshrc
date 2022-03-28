# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -e ~/.antidote ]] || git clone https://github.com/mattmc3/antidote.git ~/.antidote
. ~/.antidote/antidote.zsh
antidote load

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY_TIME

export EDITOR=nvim

setopt autocd
setopt prompt_subst
setopt GLOB_COMPLETE
setopt list_ambiguous

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arttec/.zshrc'

zstyle ':completion:*' menu select search
zstyle ':completion:*' insert false
zstyle ':completion:*' keep-prefix true
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}%d%f'
zstyle ':completion:*' group-name ''

autoload -Uz compinit; compinit
autoload -Uz vcs_info
autoload edit-command-line; zle -N edit-command-line
autoload -Uz promptinit; promptinit
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
