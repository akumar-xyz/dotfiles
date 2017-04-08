#!/bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles


# Variables

dir=~/.dotfiles                    # dotfiles directory



# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"


rm $HOME/.vimrc
ln -s $dir/vimrc $HOME/.vimrc

rm $HOME/.zshrc
ln -s $dir/.zshrc $HOME/.zshrc

rm $HOME/.Xdefaults
ln -s $dir/.Xdefaults $HOME/.Xdefaults

rm $HOME/.i3/*
ln -s $dir/i3 $HOME/.i3/config 
ln -s $dir/i3blocks $HOME/.i3/i3blocks.conf


