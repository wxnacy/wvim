"===============================
" vim-colors-solarized 配置
"===============================
colorscheme solarized

"===============================
" NERDTree 配置
"===============================
autocmd vimenter * NERDTree     " 启动vim默认打开菜单
nnoremap tt :NERDTreeToggle<CR>       " 快速打开隐藏菜单栏
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif           " 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!。
let NERDTreeShowLineNumbers=1   " 是否显示菜单行号
" let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1        " 是否显示隐藏文件
" let NERDTreeWinSize=31          " 设置宽度
let NERDTreeIgnore=['\.pyc','\~$','\.git$','\.DS_Store','__pycache__','\.idea','\.cache','.python-version']  " 忽略文件显示
let NERDTreeShowBookmarks=1     " 显示书签列表
let NERDTreeHighlightCursorline = 1 " 高亮当前行
" let NERDTreeQuitOnOpen = 1      " 从菜单打开文件后关闭菜单
let NERDTreeWinPos ="left"      " 设置菜单在左侧打开，默认值

"===============================
" vim-nerdtree-tabs 配置
"===============================
let g:nerdtree_tabs_open_on_console_startup=1


"===============================
" NERDTree-git-plugin 配置
"===============================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1


"===============================
" airline 配置
"===============================
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep       = '▶'
let g:airline_left_alt_sep   = '❯'
let g:airline_right_sep      = '◀'
let g:airline_right_alt_sep  = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#tabline#enabled = 1        " 是否打开tabline

"===============================
" nerdcommenter 配置
"===============================
let g:NERDSpaceDelims = 1       " 注释后添加空格
" let g:NERDCompactSexyComs = 1

"===============================
" quickrun 配置
"===============================
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "loclist",
\   },
\}
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>
