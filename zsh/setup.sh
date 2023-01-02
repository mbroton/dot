#!/bin/bash

# install zsh
sudo apt install zsh git wget

# set zsh as a default shell
chsh -s $(which zsh) $USER

# download oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# copy config
cp "$PWD/.zshrc" "$HOME/.zshrc"
