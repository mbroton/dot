#!/bin/bash

sudo apt install vim curl

if [ -z "$(which vim)" -o -z "$(which vimtutor)" ]; then
  echo "Warning, doesn't look like you have full Vim version."
fi

# Config file
ln -sf "$PWD/.vimrc" "$HOME/.vimrc"

# Create directory for swap files
mkdir "$HOME/.vim/tmp"

# Plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#mkdir -p "$HOME/.vim/" "$HOME/.vim/autoload"
#cp "$PWD/autoload/plug.vim" "$HOME/.vim/autoload/plug.vim"
