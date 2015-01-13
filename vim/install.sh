#!/bin/bash

sudo apt-get install -y ctags
sudo apt-get install -y build-essential cmake python-dev  #编译YCM自动补全插件依赖

if [ -f "$HOME/vimrc" ]
then
    cp ~/.vimrc ~/vimrc_backup;
    echo "INFO: backup your ~/.vimrc ~/vimrc_backup";
fi

cp vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
