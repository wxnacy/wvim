"===============================
" Name: wxnacy's Vim setting
" Author: wxnacy <wxnacy@gmail.com>
" URL: https://wxnacy.com
" Created: 2021-03-31
" Modified: 2021-03-31
" Description: 可选插件配置
"===============================

"===============================
" 代码补全
" YouCompleteMe 配置
" https://github.com/Valloric/YouCompleteMe
"===============================
if !filereadable(g:wvim_plugin_home . "/YouCompleteMe/install.py")
    " vim 弹窗不会选择第一个,而只是插入所有匹配项的最长公共文本"
    set completeopt=longest,menuone
endif

"===============================
" dart-vim-plugin 配置
" https://github.com/dart-lang/dart-vim-plugin
"===============================
if filereadable(g:wvim_plugin_home . "/dart-vim-plugin/README.md")
" Enable HTML syntax highlighting inside Dart strings with let dart_html_in_string=v:true (default false).
" Disable highlighting of core library classes with let dart_corelib_highlight=v:false (default true).
" Enable Dart style guide syntax (like 2-space indentation) with let dart_style_guide = 2
" Enable DartFmt execution on buffer save with let dart_format_on_save = 1
    let dart_html_in_string=v:true
    let dart_style_guide = 2
    let dart_format_on_save = 1
endif

"===============================
" python 代码补全
" jedi-vim 配置
" https://github.com/davidhalter/jedi-vim
"===============================
if filereadable(g:wvim_plugin_home . "/jedi-vim/Makefile")
    " let g:jedi#popup_on_dot = 0                 " 禁用点后自动补全"
    let g:jedi#popup_select_first = 0           " 禁用自动补全第一个"
    let g:jedi#rename_command = "<leader>R"     " 修改改名的快捷键"
    let g:jedi#show_call_signatures = ""        " 禁用实时显示不全的函数列表，不会卡死"
    let g:jedi#use_splits_not_buffers = "right" " 跳转源代码时，打开页面的位置，默认为当前页面"

    let g:pymode_rope = 0                       " 禁用 python-mode 的绳索模式"
    " let g:jedi#completions_enabled = 0        " 是否启用补全"
    " 使用 python 路径
    if filereadable(expand("$HOME/.pyenv/README.md"))
        let g:jedi#environment_path = expand("$HOME/.pyenv/shims/python")
    endif

endif

"===============================
" Java 代码补全
" vim-javacomplete2 配置
" https://github.com/artur-shaik/vim-javacomplete2
"===============================
if filereadable(g:wvim_plugin_home . "/vim-javacomplete2/README.md")
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
endif
