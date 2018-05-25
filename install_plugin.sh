#!/usr/bin/env bash

git submodule update --init --recursive

OS=`curl -L https://raw.githubusercontent.com/wxnacy/wshell/master/bin/system/check_system.sh | bash`
OSS=(${OS})
SYS=${OSS[0]}
VER=${OSS[1]}



if [ $SYS == 'ubuntu' ];then
    sudo apt update -y
    sudo apt install -y ack-grep
fi

