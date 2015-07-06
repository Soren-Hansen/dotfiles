#!/bin/sh

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
force=""

# force overwrite existing files
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    force="Ff"
fi

# OS specific setup
if [[ "$OSTYPE" == "linux-gnu" ]]; then # Linux
    # ...
elif [[ "$OSTYPE" == "darwin"* ]]; then # OSX
    # source "$DOTFILES_DIR/.osx"
elif [[ "$OSTYPE" == "cygwin" ]]; then # POSIX compatibility layer and Linux environment emulation for Windows
    # no settings
elif [[ "$OSTYPE" == "msys" ]]; then # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    # no settings
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # no settings
fi

# vim setup
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    rm -fR "~/.vim"
fi

ln -sv"$force" "$DOTFILES_DIR/.vimrc" ~
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

# tmux setup

#tmux copy
#reattach-to-user-namespace
#https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future


