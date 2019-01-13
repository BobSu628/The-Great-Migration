
" Functions for Vim to run file as program

" C Program
function! RunCProgram(name)
    ! clear
    execute '! clear; ' . g:CCompiler . ' -o ' . a:name . ' ' . a:name . '.c -lm'
    
endfunc
