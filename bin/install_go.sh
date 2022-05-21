#!/usr/bin/env bash

proxyon
glone https://github.com/fatih/vim-go bundle/vim-go
brew unlink ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
proxyoff
