"===============================
" Name: wxnacy's Vim setting
" Author: wxnacy <wxnacy@gmail.com>
" URL: https://wxnacy.com
" Created: 2017-08-27
" Modified: 2021-11-28
" Description: 插件配置
"===============================


"===============================
" vim-colors-solarized 配置
"===============================
colorscheme solarized
let g:solarized_termcolors=256
" set background=light       		"配色主题的色系,注意，这不是什么背景色！dark 是暗色系，light 是亮色系。


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
" let g:NERDTreeIndicatorMapCustom = {  已过期
let g:NERDTreeGitStatusIndicatorMapCustom = {
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
" let g:NERDTreeShowIgnoredStatus = 1   已过期
" 是否展示过滤状态 default: 0
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeUseSimpleIndicator = 1


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
" syntastic 配置
"===============================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1
let g:syntastic_enable_highlighting=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_stl_format = '[%E{E:%fe #%e}%B{, }%W{W:%fw #%w}]'
" pyflakes mypy pylint
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" let g:syntastic_java_javac_classpath = '~/IdeaProjects/HelloWorld/src'
" " 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" " to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>e :call ToggleErrors()<cr>
nnoremap <Leader>ec :SyntasticCheck<cr>
nnoremap <Leader>en :lnext<cr>
nnoremap <Leader>ep :lprevious<cr>

" fun! GetSnipsInCurrentScope()
" let snips = {}
" for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
    " call extend(snips, get(s:snippets, scope, {}), 'keep')
    " call extend(snips, get(s:multi_snips, scope, {}), 'keep')
" endfor
" return snips
" endf
" let g:acp_behaviorSnipmateLength=1


"===============================
" vim-fugitive 配置
" https://github.com/tpope/vim-fugitive
"===============================
nnoremap <leader>gb :G blame<CR>
" nnoremap <leader>gst :G status<CR>
" http://vimcasts.org/episodes/fugitive-vim-working-with-the-git-index/
" gs 状态下
" - add/reset Unpush - git push
" = 展示 diff
" cc commit 信息
" <enter> 打开文件
nnoremap <leader>gs :G<CR>
nnoremap <leader>gd :G diff<CR>
nnoremap <leader>gds :Gdiffsplit<CR>
nnoremap <leader>gdv :Gvdiffsplit<CR>
nnoremap <leader>gc :G commit<CR>
nnoremap <leader>gr :Gread<CR>

" set statusline+=%{FugitiveStatusline()}
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" nnoremap <leader>gdc :G diff %<CR>

"===============================
" undotree 配置
" https://github.com/mbbill/undotree.git
"===============================
nnoremap <leader>h :UndotreeToggle<CR>
if has("persistent_undo")
   let target_path = expand('~/Documents/Projects/wxnacy/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
