all:
	stow -t ~/.config config
	stow -t ~ home
	mkdir -p ~/Screenshots ~/Documents/Notas ~/Devel

zgenom:
	git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"

packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

paq:
	git clone --depth=1 https://github.com/savq/paq-nvim.git ~/.local/share/nvim/site/pack/paqs/start/paq-nvim
