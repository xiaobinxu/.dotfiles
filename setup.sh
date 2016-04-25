#!/bin/bash

# copy files to ~/ (excluding this and README.md and .git/)
#/bin/cp -rf ./. ~/
find . -type f \
  -not -path './.git/*' \
  -not -name 'README.md' \
  -not -name 'setup.sh' \
  -exec /bin/cp --parents -f '{}' ~/ ';'

mkdir -p ~/.vim_tmp

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

