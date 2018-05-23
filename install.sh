#!/usr/bin/env bash

ROOT=${PWD}
NAME=$1


# rm  ${HOME}/.vimrc
# rm  ${HOME}/.vim
# cp -R ${ROOT}/vimrc ${HOME}/.vimrc
# cp -R ${ROOT}/ ${HOME}/.vim

# ln -sf ${ROOT}/vimrc ${HOME}/.vimrc
ln -sf ${ROOT}/vimrc.pathogen ${HOME}/.vimrc
# ln -sf ${ROOT} ${HOME}/.vim
