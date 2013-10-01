#/bin/bash

# Usage: curl https://raw.github.com/sszilvasi/vimfiles/master/setup-vim.sh | bash


# Check if ~/.vimrc exists
# Create backup
# Create new .vimrc (copy)

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.old
fi

git clone https://sszilvasi@github.com/sszilvasi/vimfiles.git ~/.vim

# Vundle
if [ -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim -c "BundleUpdate" -c "qa"
fi

# Install
sudo apt-get install -y vim vim-gnome
sudo apt-get install -y ctags

