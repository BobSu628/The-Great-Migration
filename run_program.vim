
" Functions for Vim to run file as program

" C Program
function! RunCProgram(name)
    execute '! ' . g:CCompiler . ' -o ' . a:name . ' ' . a:name . '.c'
    
endfunc
