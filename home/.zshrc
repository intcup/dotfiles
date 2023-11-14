# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR='nvim'
export MANPAGER='nvim +Man!'
eval $(dircolors)

setopt PROMPT_SUBST
setopt AUTO_PARAM_SLASH

autoload -Uz compinit
autoload -Uz vcs_info
autoload -Uz zsh/complist
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/intcup/.zshrc'
zstyle ':completion:*' menu no-select
zstyle ':completion:*' insert false
zstyle ':completion:*' matcher-list '' 'l:|=* r:|=*'
zstyle ':completion:*' completer _extensions _complete
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' rehash true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' gain-privileges 1

KEYTIMEOUT=5
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

echo -ne '\e[5 q'
preexec() {
   echo -ne '\e[5 q'
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*:*' stagedstr '%F{3}'
zstyle ':vcs_info:*:*' unstagedstr '%F{1}'
zstyle ':vcs_info:*:*' check-for-changes true
zstyle ':vcs_info:git*' formats '%F{2}%c%u %b%a '

compinit

alias ls='eza --color'

precmd() { vcs_info }
PROMPT=$'%B%F{6}%m %F{4}%~ ${vcs_info_msg_0_} \n%f%#%b '

if [ $TTY = /dev/tty1 ] ; then
	export MOZ_ENABLE_WAYLAND=1
	export XDG_CURRENT_DESKTOP=sway
	export GTK_THEME=Colloid-Teal-Dark
	dbus-run-session sway
fi

PATH=$PATH:~/.local/bin
