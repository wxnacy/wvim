function! FormatJson()
python << EOF
import vim
import json
try:
    buf = vim.current.buffer
    print buf
except Exception, e:
    print e
EOF
endfunction
nnoremap <buffer> <Leader>F :call FormatJson()<cr>
