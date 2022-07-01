ZGENOM_REPO=https://github.com/jandamm/zgenom
ZGENOM_DIR=${HOME}/.zgenom

all:
	stow --target=$$HOME/.config config
	stow --target=$$HOME home --dotfiles
