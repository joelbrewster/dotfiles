#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the ~/
dotfiles directory to any desired dotfiles in ~/
############################

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bash_aliases bash_profile hushlogin profile tmux.conf vim vimrc vimperatorrc "    # list of files/folders to symlink in homedir

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "All done!"
