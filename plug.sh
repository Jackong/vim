#!/bin/sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
