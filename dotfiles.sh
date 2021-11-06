mkdir ~/.config -p
ln -sf $(pwd)/bspwm ~/.config
ln -sf $(pwd)/sxhkd ~/.config
ln -sf $(pwd)/nvim ~/.config
ln -sf $(pwd)/picom.conf ~/.config
ln -sf $(pwd)/alacritty ~/.config
ln -sf $(pwd)/xinitrc ~/.xinitrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/polybar ~/.config
ln -sf $(pwd)/rofi ~/.config
ln -sf $(pwd)/alacritty ~/.config

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
