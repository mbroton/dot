#!/bin/bash

sudo wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
sudo dpkg -i $PWD/nvim-linux64.deb
sudo apt-get install -f
rm -f nvim-linux64.deb

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

