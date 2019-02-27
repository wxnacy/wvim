
" 代码补全
if !filereadable(g:wvim_plugin_home . "/YouCompleteMe/install.py")
    " vim 弹窗不会选择第一个,而只是插入所有匹配项的最长公共文本"
    set completeopt=longest,menuone
endif
