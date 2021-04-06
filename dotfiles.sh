mkdir ~/.config
ln -sf $(pwd)/bspwm ~/.config
ln -sf $(pwd)/sxhkd ~/.config
ln -sf $(pwd)/nvim ~/.config
ln -sf $(pwd)/picom.conf ~/.config
ln -sf $(pwd)/alacritty ~/.config
ln -sf $(pwd)/xinitrc ~/.xinitrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/polybar ~/.config

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
