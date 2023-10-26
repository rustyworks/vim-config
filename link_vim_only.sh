#!/bin/bash --login

CURRENT_PATH=`pwd`

rm -rf ~/.vim ~/.vimrc ~/.vim

cd ~
ln -sf $CURRENT_PATH/.vimrc .vimrc
ln -sf $CURRENT_PATH/.vim .vim

# git clone 'https://github.com/VundleVim/Vundle.vim' $CURRENT_PATH/.vim/bundle/Vundle.vim
