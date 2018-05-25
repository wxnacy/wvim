#!/usr/bin/env bash

ROOT=${HOME}/.wvim
NAME=$1

git clone https://github.com/wxnacy/wvim ${ROOT}


echo ''
echo 'Run the following command to quickly use wvim'
echo ''
echo "  ln -sf ${ROOT}/vimrc ${HOME}/.vimrc"
echo "  ln -sf ${ROOT} ${HOME}/.vim"

# sudo apt -y update
# sudo apt install -y ack-grep
