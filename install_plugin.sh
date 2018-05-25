#!/usr/bin/env bash

OS=`curl -L https://raw.githubusercontent.com/wxnacy/wshell/master/bin/system/check_system.sh | bash`
OSS=(${OS})
SYS=${OSS[0]}
VER=${OSS[1]}

ROOT=${PWD}
NAME=$1


# rm  ${HOME}/.vimrc
# rm  ${HOME}/.vim
# cp -R ${ROOT}/vimrc ${HOME}/.vimrc
# cp -R ${ROOT}/ ${HOME}/.vim

# ln -sf ${ROOT}/vimrc ${HOME}/.vimrc
ln -sf ${ROOT}/vimrc.pathogen ${HOME}/.vimrc
# ln -sf ${ROOT} ${HOME}/.vim

