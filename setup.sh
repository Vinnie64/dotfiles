#!/bin/bash
apt update
apt full-upgrade -y
apt install python3.8 tmux vim zsh -y
export ZSH=$HOME/.oh-my-zsh
git clone https://github.com/Fittiboy/dotfiles ~/dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
python3.8 ~/dotfiles/export.py
chsh -s /bin/zsh

