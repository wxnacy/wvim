#!/usr/bin/env bash

ROOT=${HOME}/.wvim
NAME=$1

[ -d ${ROOT} ] || git clone https://github.com/wxnacy/wvim ${ROOT}


echo ''
echo 'Run the following command to quickly use wvim'
echo ''
if [[ -d ${HOME}/.vim || -f ${HOME}/.vim ]];then
    echo "  mv ${HOME}/.vim ${HOME}/.vim.old"
fi

if [[ -d ${HOME}/.vimrc || -f ${HOME}/.vimrc ]];then
    echo "  mv ${HOME}/.vimrc ${HOME}/.vimrc.old"
fi
echo "  ln -sf ${ROOT} ${HOME}/.vim"
echo "  ln -sf ${ROOT}/vimrc ${HOME}/.vimrc"
echo ""
echo "If you want to use plugins, Please run"
echo ""
echo "  ln -sf ${ROOT}/vimrc.pathogen ${HOME}/.vimrc"
echo "  cd ${ROOT} && ./install_plugin.sh"
echo ""


