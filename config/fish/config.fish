set -gx EDITOR nvim

alias ls='exa --icons'
alias ll='ls -l'
alias la='ls -l -a'

alias notas='cd ~/Documents/Notas'
alias dev='cd ~/Devel'

set __fish_git_prompt_show_informative_status

set fish_cursor_insert line
set fish_prompt_pwd_dir_length 3
set __fish_git_prompt_showcolorhints enabled
set __fish_git_prompt_color_upstream yellow
set __fish_git_prompt_char_stateseparator ' '

function fish_mode_prompt; end

function fish_git_prompt
	
	if git -C . rev-parse 2>/dev/null
		set_color green
		printf " %s " (command git rev-parse --abbrev-ref HEAD)
		set staged (command git diff --cached --numstat | wc -l)
		set modified (command git ls-files --modified | wc -l)
		set untracked (command git ls-files --others | wc -l)
		if test $staged -gt 0
			set_color blue
			printf "$staged "
		end
		if test $modified -gt 0
			set_color yellow
			printf "$modified "
		end
		if test $untracked -gt 0
			set_color red
			printf "$untracked "
		end

		set origin_count (command git remote | wc -l)
		if test $origin_count -gt 0
			set ahead (command git log origin..HEAD --oneline | wc -l)
			set behind (command git log HEAD..origin --oneline | wc -l)
			if test $ahead -gt 0
				set_color green
				printf "$ahead "
			end
			if test $behind -gt 0
				set_color yellow
				printf "$behind "
			end
		end
	end

end

function fish_prompt
	set_color --bold cyan
	echo -n (prompt_pwd) 
	echo -n (fish_vcs_prompt)
	set_color --bold normal
	printf '\n$ '
	set_color normal
end

function fish_greeting
	pfetch
end
