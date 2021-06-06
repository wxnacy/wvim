# wvim

`wvim` 可以快速集成 vim 开发环境。

## 安装

执行

```bash
$ curl -L https://raw.githubusercontent.com/wxnacy/wvim/master/install | bash
```

随后根据脚本提示完成操作即可使用。

## 代码补全

万物不全基于 YouCompleteMe

现阶段作为 Mac 系统下新系统适配最好，且最高大全的补全插件就是它了。

[Vim 插件 YouCompleteMe 代码自动补全](https://wxnacy.com/2017/09/22/vim-plugin-youcompleteme/)

### Go

```bash
$ go get -u github.com/mdempsky/gocode
$ vim ~/.bash_profile
export PATH=$PATH:$GOPATH/bin
$ source ~/.bash_profile
```

然后使用 `<c-x><c-o>` 即可完成自动补全

### Python

```bash
$ git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
$ pip install jedi
```
