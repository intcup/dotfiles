PACKER_REPO=https://github.com/wbthomason/packer.nvim
PACKER_DIR=${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim


ZGENOM_REPO=https://github.com/jandamm/zgenom
ZGENOM_DIR=${HOME}/.zgenom

all: packer zgenom
	stow --target=$$HOME/.config config
	stow --target=$$HOME home

packer: 
	@if [ ! -d $(PACKER_DIR) ]; then git clone --depth=1 $(PACKER_REPO) $(PACKER_DIR) ;fi

zgenom:
	@if [ ! -d $(ZGENOM_DIR) ]; then git clone $(ZGENOM_REPO) $(ZGENOM_DIR); fi
