mkdir ~/.config -p

for f in config/*; do
	ln -sf $(pwd)/$f ~/.config
done
ln -sf $(pwd)/xinitrc ~/.xinitrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"
