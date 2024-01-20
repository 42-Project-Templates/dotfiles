#!/bin/bash

set -e

function install_omz_plugins() {
	if [[ ! -d $HOME/zsh-syntax-highlighting ]]; then
		echo "Installing zsh-syntax-highlighting"
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
		echo "Installed zsh-syntax-highlighting"
	fi
}

if [[ ! -f $HOME/.vimrc ]]; then
	mkdir -p $HOME/.vim/undodir
	ln -sfn $HOME/.dotfiles/.vimrc $HOME/.vimrc
fi

echo 'eval "$(starship init zsh)"' >> ~/.zshrc

