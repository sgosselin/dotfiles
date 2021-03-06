#!/usr/bin/env bash

# exits if a command failed.
set -e

function do_it() {
	# Install oh-my-zsh
	if [[ ! -d "$HOME/.oh-my-zsh" ]];
	then
		echo "IMPORTANT - oh-my-zsh is not installed"
		echo "After installation, please re-run the bootstrap script"
		echo ""

		which curl >/dev/null
		if [[ $? -ne 0 ]];
		then
			echo "Error, install 'curl' to install oh-my-zsh."
			exit 1
		fi

		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	fi

	# Install dotfiles
	ln -fs $(pwd)/.aliases $HOME
	ln -fs $(pwd)/.gitconfig $HOME
	ln -fs $(pwd)/.gitignore $HOME
	ln -fs $(pwd)/.tmux.conf $HOME
	ln -fs $(pwd)/.vimrc $HOME
	ln -fs $(pwd)/.zshrc $HOME
	ln -fs $(pwd)/.oh-my-zsh/themes/voxelgrid.zsh-theme $HOME/.oh-my-zsh/themes/

	# Install vundle if needed.
	if [[ ! -d "$HOME/.vim/bundle/vundle.vim" ]];
	then
		mkdir -p ~/.vim/bundle/vundle.vim
		git clone https://github.com/gmarik/vundle.git \
			~/.vim/bundle/vundle.vim
	fi
}

# Destructive action, warn user
read -p "This may overwrite existing files in your home directory, are you sure ? (y/n) " -n 1;
echo "";

# Proceed if user agreed
if [[ $REPLY =~ ^[Yy]$ ]];
then
	do_it;
fi;

# Clean-up
unset do_it;
