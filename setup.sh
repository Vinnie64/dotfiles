#!/bin/sh
# Update mirrorlist
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Fittiboy/personal-scripts/master/mirrorlist-update)"
# pacman -S " 
export ZSH=$HOME/.oh-my-zsh
git clone https://github.com/fittiboy/dotfiles ~/dotfiles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo rm -f .zshrc .vimrc .tmux.conf
mkdir -p $HOME/.config/i3/
mkdir -p $HOME/.config/alacritty/
python3.8 $HOME/dotfiles/export.py
chsh -s /bin/zsh
vim +PluginInstall +qall
echo "Restart your terminal for all changes to take effect!"

