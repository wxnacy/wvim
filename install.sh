#!/usr/bin/env bash

ROOT=${HOME}/.wvim
NAME=$1

git clone https://github.com/wxnacy/wvim ${ROOT}


echo ''
echo 'Run the following command to quickly use wvim'
echo ''
echo "  mv ${HOME}/.vim ${HOME}/.vim.old"
echo "  mv ${HOME}/.vimrc ${HOME}/.vimrc.old"
echo "  ln -sf ${ROOT} ${HOME}/.vim"
echo "  ln -sf ${ROOT}/vimrc ${HOME}/.vimrc"
echo ""
echo "If you want to use plugins, Please run"
echo ""
echo "  cd ${ROOT} && ./install_plugin.sh"
echo "  ln -sf ${ROOT}/vimrc.pathogen ${HOME}/.vimrc"
echo ""


