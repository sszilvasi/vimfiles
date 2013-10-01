#/bin/bash


# Check if ~/.vimrc exists
# Create backup
# Create new .vimrc (copy)

# Vundle
if [ -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

# Check if ctags is installed
# Install if necessary

sudo apt-get install -y vim-gnome
sudo apt-get install -y ctags

