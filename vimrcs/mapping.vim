"===============================
" Name: wxnacy's Vim setting
" Author: wxnacy <wxnacy@gmail.com>
" URL: https://wxnacy.com
" Created: 2017-08-27
" Modified: 2021-03-24
" Description: Mapping
"===============================

" 快速打开 vimrc文件
nnoremap <Leader>ve :vsp ~/.vim/vimrc<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>:nohls<CR>
nnoremap <Leader>te :vsp ~/.tmux.conf<CR>
nnoremap <Leader>jse :vsp ~/.vim/syntax/javascript.vim<CR>
nnoremap <Leader>pye :vsp ~/.vim/syntax/python.vim<CR>
nnoremap <Leader>sshe :vsp ~/.ssh/config<CR>
nnoremap <Leader>zshe :vsp ~/.zshrc<CR>
nnoremap <Leader>vsp :vsp ~/.vim/syntax/python.vim<CR>
nnoremap <Leader>vsmd :vsp ~/.vim/syntax/markdown.vim<CR>
nnoremap <Leader>vsjs :vsp ~/.vim/syntax/javascript.vim<CR>
nnoremap <Leader>vsj :vsp ~/.vim/syntax/java.vim<CR>
nnoremap <Leader>br :vsp ~/.bashrc<CR>
nnoremap <Leader>bp :vsp ~/.bash_profile<CR>

" 竖分屏打开帮助文档
nnoremap <Leader>vh :vert h<space>
" 快速查看 messages
nnoremap <Leader>vm :messages<CR>
" 去掉高亮
nnoremap <Leader>nh :nohls<CR>
" 修改撤销快捷键
nnoremap U u
nnoremap u <nop>
" 折叠代码
nnoremap <Leader>c zc
nnoremap u <nop>

" 模式切换 ================== {{{

" 快速返回常用模式
inoremap jk <esc>
vnoremap JK <esc>

" 插入模式快速移动到行首和行尾
" nnoremap <C-a> I
nnoremap <C-e> A
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" }}}


" 保存 ================== {{{

" 快速推出
nnoremap <Leader>q :q<CR>
" 快速保存
nnoremap <Leader>w :w<CR>
" 没有保存权限时，使用 sudo 身份保存
nnoremap <Leader>W :w !sudo tee % > /dev/null<cr>
" command W w !sudo tee % > /dev/null
" 快速保存推出
nnoremap <Leader>wq :wq<CR>

" }}}

" Windows ================== {{{

" 调整窗口大小
nnoremap <c-w>> <c-w>30>
nnoremap <c-w>< <c-w>30<
nnoremap <c-w>- <c-w>30-
nnoremap <c-w>+ <c-w>30+

" }}}

" 文本操作 ================== {{{

" 选中全部
nnoremap <Leader>sa ggVG
" 删除全部
nnoremap <Leader>da ggdG
" 选中到行尾
nnoremap vig vg_
" 快速选中当前行有效文字区域
nnoremap vv g_v0

" 模拟IDE<tab>键，单行的缩紧退回和选中模式下的缩进退回
nnoremap <tab> V>
nnoremap <S-tab> V<
vnoremap <tab> >gv
vnoremap <S-tab> <gv

" 上下移动文本
nnoremap <Leader>k ddkP
nnoremap <Leader>j ddp
vnoremap <Leader>k dkP
vnoremap <Leader>j dp

" }}}

" 光标移动 ================== {{{

" 文本超出屏幕时左右移动
nnoremap <Leader>l 79l
nnoremap <Leader>h 79h


" 插入模式快速左右移动一格
inoremap <C-b> <esc>i
inoremap <C-f> <esc>la

" 插入模式快速删除字符
inoremap <C-d> <esc>lxi


" 使用 <C-hjkl> 进行移动窗口，不必输入 w
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}


" 复制粘贴 ================== {{{

" 复制和系统剪贴板交互
" set clipboard = unname
nnoremap <C-y> "+Y
vnoremap <C-y> "+y
" 黏贴系统剪切版的内容
nnoremap <C-p> "+p
inoremap <C-p> <esc>"+pi
" 复制黏贴
nnoremap yp yyp

" }}}

" 快速添加成对标签
" nnoremap <Leader>" eb<esc>i"<esc>ea"<esc>
" nnoremap <Leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <Leader>" viw<esc>bi"<esc>ea"<esc>
nnoremap <Leader>' viw<esc>bi'<esc>ea'<esc>
nnoremap <Leader>` viw<esc>bi`<esc>ea`<esc>
nnoremap <Leader>[ viw<esc>bi[<esc>ea]<esc>
nnoremap <Leader>{ viw<esc>bi{<esc>ea}<esc>
nnoremap <Leader>( viw<esc>bi(<esc>ea)<esc>
vnoremap <Leader>" di""<esc>hp
vnoremap <Leader>' di''<esc>hp
vnoremap <Leader>` di``<esc>hp
vnoremap <Leader>( di()<esc>hp
vnoremap <Leader>{ di{}<esc>hp
vnoremap <Leader>[ di[]<esc>hp
nnoremap <Leader><Leader>" <s-i>"<esc><s-a>"<esc>
nnoremap <Leader><Leader>' <s-i>'<esc><s-a>'<esc>
nnoremap <Leader><Leader>` <s-i>`<esc><s-a>`<esc>
nnoremap <Leader><Leader>[ <s-i>[<esc><s-a>]<esc>
nnoremap <Leader><Leader>{ <s-i>{<esc><s-a>}<esc>
nnoremap <Leader><Leader>( <s-i>(<esc><s-a>)<esc>

" 快速在行尾巴插入分号;
nnoremap <Leader>, mzA;<esc>`z
inoremap <Leader>, <esc>mzA;<esc>`za
nnoremap <Leader><Leader><space> viw<esc>a<space><esc>bi<space><esc>
vnoremap <Leader><Leader><space> di<space><space><esc>hp


" 废弃使用 <Leader> 在插入模式下移动键位的模式
" inoremap <Leader>l <esc>la
" inoremap <Leader>h <esc>i
" inoremap <Leader>j <esc>ja
" inoremap <Leader>k <esc>ka
" 插入模式右删除一格
" inoremap <C-l> <esc>lxi
" 重新加载文件
" nnoremap <Leader>ar :e<CR>
