set -gx EDITOR helix

fish_vi_key_bindings

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block
set fish_vi_force_cursor

bind -M insert \cf 'fzy_path'

alias ls='exa --icons'
alias ll='ls -l'
alias la='ls -l -a'

alias notas='cd ~/Documents/Notas'
alias clases='cd ~/Documents/Clases'
alias dev='cd ~/Devel'

set __fish_git_prompt_show_informative_status

set fish_prompt_pwd_dir_length 3
set __fish_git_prompt_showcolorhints enabled
set __fish_git_prompt_color_upstream yellow
set __fish_git_prompt_char_stateseparator ' '

function fish_mode_prompt; end

function fish_prompt
	set_color --bold cyan
	echo -n (prompt_pwd) 
	echo -n (fish_vcs_prompt)
	set_color --bold normal
	printf '\n$ '
	set_color normal
end

function fish_greeting
	ufetch
end
