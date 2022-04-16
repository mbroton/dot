#!/bin/bash

# install zsh
sudo apt install zsh git wget

# set zsh as a default shell
chsh -s $(which zsh) $USER

# download oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# install p10k?
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy config
cp "$PWD/.zshrc" "$HOME/.zshrc"
