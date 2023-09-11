#!/bin/zsh

cp ~/.inputrc ~/.config/nvim/dotfiles
cp ~/.tmux.conf ~/.config/nvim/dotfiles
cp ~/.zshrc ~/.config/nvim/dotfiles
cp ~/.zprofile ~/.config/nvim/dotfiles
git checkout darwin
git add .
git commit -m 'update dotfiles'
git push origin darwin
