paq-dir = ~/.local/share/nvim/site/pack/paqs/start/paq-nvim
zgenom-dir = ~/.zgenom

all: $(paq-dir) $(zgenom-dir)
	stow -t ~/.config config
	stow -t ~ home
	mkdir -p ~/Screenshots ~/Documents/Notas ~/Devel

$(paq-dir):
	git clone --depth=1 https://github.com/savq/paq-nvim.git $(paq-dir)

$(zgenom-dir):
	git clone https://github.com/jandamm/zgenom.git $(zgenom-dir)
