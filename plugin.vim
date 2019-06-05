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
let NERDTreeIgnore=['\.pyc','\~$','\.git$','\.DS_Store','__pycache__','\.idea','\.cache','.python-version', '.swp', '.swo']  " 忽略文件显示
let NERDTreeShowBookmarks=1     " 显示书签列表
let NERDTreeHighlightCursorline = 1 " 高亮当前行
let NERDTreeQuitOnOpen = 1      " 从菜单打开文件后关闭菜单
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

"===============================
" easymotion 配置
"===============================
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><Leader>. <Plug>(easymotion-repeat)

"===============================
" ctrlp 配置
"===============================
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>p :CtrlP<CR>
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"===============================
" ctrlp-funky 配置
"===============================
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

"===============================
" whitespace 配置
"===============================
map <leader><space> :FixWhitespace<cr>

"===============================
" emment-vim 配置
"===============================
let g:user_emmet_leader_key='<C-Z>'     " 设置快捷键

"===============================
" EasyAlign 配置
"===============================
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

"===============================
" closetag 配置
"===============================
let g:closetag_html_style=1

"===============================
" vim-multiple-cursors 配置
"===============================
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" let g:multi_cursor_start_word_key='g<C-n>'
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

"===============================
" ack 配置
"===============================
" let g:ackprg = 'ag --nogroup --nocolor --column'
nmap <Leader><Leader>a :Ack<space>-i<space>

"===============================
" gundo 配置
"===============================
nnoremap <leader>H :GundoToggle<CR>
if has('python3')
    let g:gundo_prefer_python3 = 1
endif

"===============================
" supertab 配置
" https://github.com/ervandew/supertab
"===============================
let g:SuperTabDefaultCompletionType = "<c-n>"


"===============================
" jedi-vim 配置
" https://github.com/davidhalter/jedi-vim
"===============================
if filereadable(expand("$HOME/.vim/bundle/jedi-vim/Makefile"))    " 判断文件是否存在"
    " let g:jedi#popup_on_dot = 0                 " 禁用点后自动补全"
    let g:jedi#popup_select_first = 0           " 禁用自动补全第一个"
    let g:jedi#rename_command = "<leader>R"     " 修改改名的快捷键"
    let g:jedi#show_call_signatures = ""        " 禁用实时显示不全的函数列表，不会卡死"
    let g:jedi#use_splits_not_buffers = "right" " 跳转源代码时，打开页面的位置，默认为当前页面"

    let g:pymode_rope = 0                       " 禁用 python-mode 的绳索模式"
    " let g:jedi#completions_enabled = 0        " 是否启用补全"
endif

"===============================
" dart-vim-plugin 配置
" https://github.com/dart-lang/dart-vim-plugin
"===============================
if filereadable(expand("$HOME/.vim/bundle/dart-vim-plugin/README.md"))    " 判断文件是否存在"
" Enable HTML syntax highlighting inside Dart strings with let dart_html_in_string=v:true (default false).
" Disable highlighting of core library classes with let dart_corelib_highlight=v:false (default true).
" Enable Dart style guide syntax (like 2-space indentation) with let dart_style_guide = 2
" Enable DartFmt execution on buffer save with let dart_format_on_save = 1
    let dart_html_in_string=v:true
    let dart_style_guide = 2
    let dart_format_on_save = 1
endif

" fun! GetSnipsInCurrentScope()
" let snips = {}
" for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
    " call extend(snips, get(s:snippets, scope, {}), 'keep')
    " call extend(snips, get(s:multi_snips, scope, {}), 'keep')
" endfor
" return snips
" endf
" let g:acp_behaviorSnipmateLength=1
