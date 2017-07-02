" a few more customization pieces 

" special highlighting for None, True, and False
syntax keyword pythonNoneType None
syntax keyword pythonBoolType True False

" color all ops
syntax match pythonOpType "\v\+"
syntax match pythonOpType "\v/"
syntax match pythonOpType "\v-"
syntax match pythonOpType "\v\*"
syntax match pythonOpType "\v\*\*"
syntax match pythonOpType "\v\+\="
syntax match pythonOpType "\v\-\="
syntax match pythonOpType "\v\*\="
syntax match pythonOpType "\v\/\="
syntax match pythonOpType "\v\=\="
syntax match pythonOpType "\v!\="
syntax match pythonOpType "\v\<"
syntax match pythonOpType "\v\>"
syntax match pythonOpType "\v\>\="
syntax match pythonOpType "\v\<\="

" support for CONSTANT_VALUES
syntax match pythonConstant "\<[A-Z_]\+[A-Z0-9_]\+\>"

" add highlighting for 'self'
syntax match pythonSelf "\zsself\ze[,.)]"

" make all custom exceptions follow the convention of standard exceptions - WIP
" syntax match pythonException "/\s[A-Z]\+Exception"
" syntax match pythonException "/\s[A-Z]\+Error"

" create a syntax region for a method implementation - WIP
" syn region MethodImplementation start="\vdef\s[a-zA-Z_][a-zA-Z0-9_]*" end="\vdef\s[a-zA-Z_][a-zA-Z0-9_]*" contains=MethodParameter
" syntax match MethodParameter "def\s[a-zA-Z_][a-zA-Z0-9_]*(.*\,\s*\zs\w\+\ze\s*=.*)"

" define the classes
highlight link pythonConstant Constant
highlight link pythonBoolType Boolean
highlight link pythonNoneType Keyword
highlight link pythonException Type
highlight link pythonOpType Function
highlight link MethodParameter Type
hi  pythonSelf guifg=#638CAD
