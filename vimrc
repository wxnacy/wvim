"===============================
" Name: wxnacy's Vim setting
" Author: wxnacy <wxnacy@gmail.com>
" URL: https://wxnacy.com
" Created: 2017-08-27
" Modified: 2017-10-26
" Description:
"===============================


" 加载单独模块
so ~/.vim/vimrcs/basic.vim
so ~/.vim/vimrcs/constants.vim
so ~/.vim/vimrcs/mapping.vim
so ~/.vim/vimrcs/abbreviations.vim
so ~/.vim/vimrcs/operator-mapping.vim
so ~/.vim/vimrcs/functions.vim
" 判断并加载本地常量文件
if filereadable(expand("$HOME/.vim/local-constants.vim"))
  so ~/.vim/local-constants.vim
endif
" 判断并加载自定义文件
if filereadable(expand("$HOME/.vim/local.vim"))
  so ~/.vim/local.vim
endif
" 主题
set background=dark       		"配色主题的色系,注意，这不是什么背景色！dark 是暗色系，light 是亮色系。
" colorscheme desert              "配色主题的名称,:coloscheme 后键入<tab>可以自动补全 比较喜欢的desert,peachpuff,torte,elfload,slate
colorscheme solarized


au BufNewFile,BufRead *zprofile set filetype=sh
au BufNewFile,BufRead *bash_aliases set filetype=sh
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab ai
autocmd FileType json set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType java set tabstop=4 shiftwidth=4 colorcolumn=120 expandtab ai
autocmd FileType sh set tabstop=4 shiftwidth=4 colorcolumn=120 expandtab ai
autocmd FileType go set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType python exec ":call NewPyFile()"
autocmd BufNewFile *.py exec ":call NewPyFile()"
autocmd BufNewFile *.java exec ":call NewJavaFile()"
au BufNewFile,BufRead *.me set filetype=me

