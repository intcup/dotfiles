mkdir ~/.config -p

for f in config/*; do
	ln -sf $(pwd)/$f ~/.config
done
ln -sf $(pwd)/xinitrc ~/.xinitrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
