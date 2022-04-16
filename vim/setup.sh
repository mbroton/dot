#!/bin/bash

sudo apt install vim

if [ -z "$(which vim)" -o -z "$(which vimtutor)" ]; then
  echo "Warning, doesn't look like you have full Vim version."
fi

# Config file
ln -sf "$PWD/.vimrc" "$HOME/.vimrc"

# Plugin manager
mkdir -p "$HOME/.vim/" "$HOME/.vim/autoload"
ln -sf "$PWD/autoload/plug.vim" "$HOME/.vim/autoload/plug.vim"
