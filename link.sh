#!/bin/bash --login

CURRENT_PATH=`pwd`

rm -rf ~/.vim ~/.vimrc ~/.vim

cd ~
ln -sf $CURRENT_PATH/.vimrc .vimrc
ln -sf $CURRENT_PATH/.gvimrc .gvimrc
ln -sf $CURRENT_PATH/.vim .vim

mkdir ~/.config
mkdir ~/.config/nvim
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after' >> ~/.config/nvim/init.vim
echo 'let &packpath=&runtimepath' >> ~/.config/nvim/init.vim
echo 'source ~/.vimrc' >> ~/.config/nvim/init.vim

# git clone 'https://github.com/VundleVim/Vundle.vim' $CURRENT_PATH/.vim/bundle/Vundle.vim
