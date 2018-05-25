#!/usr/bin/env bash

ROOT=${PWD}
NAME=$1

git clone https://github.com/wxnacy/wvim ~/.wvim


echo "Run the following command to quickly use wvim\n"

echo "  ln -sf ${ROOT}/vimrc ${HOME}/.vimrc"
echo "  ln -sf ${ROOT} ${HOME}/.vim"

# sudo apt -y update
# sudo apt install -y ack-grep
