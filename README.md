# wvim

`wvim` 可以快速集成 vim 开发环境。

## 安装

执行

```bash
$ curl -L https://raw.githubusercontent.com/wxnacy/wvim/master/install | bash
```

随后根据脚本提示完成操作即可使用。

## 代码补全

### Go

```bash
$ go get -u github.com/mdempsky/gocode
$ vim ~/.bash_profile
export PATH=$PATH:$GOPATH/bin
$ source ~/.bash_profile
```

然后使用 `<c-x><c-o>` 即可完成自动补全
