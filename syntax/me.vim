" http://vimcdoc.sourceforge.net/doc/syntax.html
" /usr/local/Cellar/vim/8.1.1000/share/vim/vim81/syntax
if exists("b:current_syntax")
    finish
endif

syntax keyword pyStatement class def

syntax keyword pyInclude from import as

syntax keyword pyParam self cls

syntax keyword pyValue None True False
" syn match   pythonFunction	"\h\w*" display contained
" syn sync match pythonSync grouphere NONE "^\%(def\|class\)\s\+\h\w*\s*[(:]"


syntax keyword pyRepeat for while
syntax keyword pyConditional if else elif
syntax keyword pyKeyword in return is or and not
syntax match pySpecial "\v\="
syntax match pySpecial "\v\-"
syntax match pySpecial "\v\+"
syntax match pySpecial "\v\*"
syntax match pyCoding /\%^.*\%(\n.*\)\?#.*coding[:=]\s*[0-9A-Za-z-_.]\+.*$/

syntax match pyString "\v\".*\""
syntax match pyString "\v\'.*\'"

" syntax match pyFunction "\v__[a-zA-Z]*__"

syntax match pyFunction "\v\@.*"
" syntax region pyFunction start=/\vclass/ skip=/\v\(\)/ end=/\v\)/
syntax keyword pyFunction print sum isinstance setattr int str list set dict
syntax keyword pyFunction __abs__ __add__ __aenter__ __aexit__ __aiter__ __and__ __anext__
  \ __await__ __bytes__ __call__ __complex__ __contains__ __del__ __delattr__ __delete__
  \ __delitem__ __dir__ __divmod__ __enter__ __eq__ __exit__ __float__ __floordiv__
  \ __format__ __ge__ __get__ __getattr__ __getattribute__ __getitem__ __gt__ __hash__
  \ __iadd__ __iand__ __ifloordiv__ __ilshift__ __imod__ __imul__ __index__ __init__
  \ __int__ __invert__ __ior__ __ipow__ __irshift__ __isub__ __iter__ __itruediv__ __ixor__
  \ __le__ __len__ __lshift__ __lt__ __mod__ __mul__ __ne__ __neg__ __new__ __next__ __or__
  \ __pos__ __pow__ __radd__ __rand__ __rdivmod__ __repr__ __reversed__ __rfloordiv__
  \ __rlshift__ __rmod__ __rmul__ __ror__ __rpow__ __rrshift__ __rshift__ __rsub__
  \ __rtruediv__ __rxor__ __set__ __setattr__ __setitem__ __str__ __sub__ __truediv__ __xor__


syntax keyword pyTodo TODO FIXME NOTE

syntax match pyComment "\v#.*$" 

" highlight Comment guisp=NONE guifg=#EE2C2C guibg=NONE gui=NONE ctermfg=74 cterm=NONE

highlight link pyTodo Todo
highlight link pyInclude Include
highlight link pyString String
highlight link pyRepeat Special
highlight link pyConditional Special
highlight link pyKeyword Special
highlight link pyStatement Statement
highlight link pyFunction Function
" highlight link pythonFunction Function
" highlight link pythonSync Function
highlight link pyCoding Define
highlight link pyComment String
highlight link pyParam Type
highlight link pyValue Underlined


let b:current_syntax = "me"
