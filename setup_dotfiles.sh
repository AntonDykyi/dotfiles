#!/usr/bin/env bash

### Setup script ###

### Logic behind the choice of files ###
# Most Linux cloud servers already come with solid config files sufficient for the basic dev work
# the only missing bits are tool-specific config files
# MacOs requires a complete rewrite of the default .bash_profile file
# This is why the script copies extra bash files 

if [[ ! -d ~/dotfiles ]]; then
    echo "The directory with dotfiles is missing!"
    echo "Makes sure the git repo is cloned to the $HOME folder"
    exit
fi

# Check the OS and copy the missing dotfiles
if [[ "$(uname)" == "Darwin" ]]; then
    ln -s ~/dotfiles/.bashrc ~/.bashrc
    ln -s ~/dotfiles/.bash_profile ~/.bash_profile
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/.inputrc ~/.inputrc
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/.vim/ ~/.vim/
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    source ~/.bashrc
    source ~/.bash_profile
    source ~/.bash_aliases
    source ~/.inputrc
    source ~/.tmux.conf
    source ~/.vimrc
fi

if [[ "$(uname)" == "Linux" ]]; then
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/.inputrc ~/.inputrc
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/.tmux.remote.conf ~/.tmux.remote.conf
    ln -s ~/dotfiles/.vim/ ~/.vim/
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    source ~/.bash_aliases
    source ~/.inputrc
    source ~/.tmux.conf
    source ~/.tmux.remote.conf
    source ~/.vimrc
fi
