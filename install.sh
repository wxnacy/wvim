#!/usr/bin/env bash

ROOT=${PWD}
NAME=$1

git clone https://github.com/wxnacy/wxnacy-vim ~/.wxnacy-vim

# rm  ${HOME}/.vimrc
# rm  ${HOME}/.vim
# cp -R ${ROOT}/vimrc ${HOME}/.vimrc
# cp -R ${ROOT}/ ${HOME}/.vim

# ln -sf ${ROOT}/vimrc ${HOME}/.vimrc
echo "ln -sf ${ROOT}/vimrc.pathogen ${HOME}/.vimrc"
echo "ln -sf ${ROOT} ${HOME}/.vim"

# sudo apt -y update
# sudo apt install -y ack-grep
