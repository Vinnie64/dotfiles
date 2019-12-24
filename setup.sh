#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo apt install git python3.8 tmux vim zsh -y
export ZSH=$HOME/.oh-my-zsh
git clone https://github.com/fittiboy/dotfiles ~/dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo rm -f .zshrc .vimrc .tmux.conf
python3.8 $HOME/dotfiles/export.py
chsh -s /bin/zsh

