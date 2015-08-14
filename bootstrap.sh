#!/bin/bash

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
force=""

# force overwrite existing files
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    force="Ff"
fi

# X11
ln -sv"$force" "$DOTFILES_DIR/.Xresources" ~
ln -sv"$force" "$DOTFILES_DIR/.xinitrc" ~

# vim setup
ln -sv"$force" "$DOTFILES_DIR/.vimrc" ~

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    rm -fR "~/.vim"
fi

if [ ! -e "~/.vim" ]; then
    ln -sv"$force" "$DOTFILES_DIR/.vim" ~
fi

if [ ! -d "$DOTFILES_DIR/.vim/bundle/vundle" ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
else
    git -C ~/.vim/bundle/vundle pull
fi

vim +PluginInstall +qall

# bash setup

# git setup

# i3
ln -sv"$force" "$DOTFILES_DIR/.i3status.conf" ~

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    rm -fR "~/.i3"
fi

if [ ! -e "~/.i3" ]; then
    ln -sv"$force" "$DOTFILES_DIR/.i3" ~
fi

# tmux setup

#tmux copy
#reattach-to-user-namespace
#https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future


