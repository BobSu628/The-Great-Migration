" Key Mappings and Shortcuts

"""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE

" [Ctrl-N] Toggle line numbering (on or off)
nnoremap <c-n> :call NumbersToggle()<cr>

nnoremap <F5> :call RunCurrentProgram()<cr>

nnoremap <S-F5> :call RunCurrentProgramAndDisplayOutput()<cr>

"""""""""""""""""""""""""""""""""""""""""
" INSERT MODE

" [ENTER] 
" * Carriage Return
" * Set indentation of next line equal to current line
" imap <cr> <c-o> :call LineBreak() <cr>

inoremap jk <esc>
