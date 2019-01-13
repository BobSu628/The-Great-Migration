" Key Mappings and Shortcuts
    
"""""""""""""""""""""""""""""""""""""""""
" NORMAL MODE 

" [Ctrl-N] Toggle line numbering (on or off)
nnoremap <c-n> :call NumbersToggle()<cr>

nnoremap <left> :call CursorMoveLeft()<cr>

nnoremap <right> :call CursorMoveRight()<cr>

"nnoremap <F5> :call RunCurrentProgram()<cr>

"nnoremap <S-F5> :call RunCurrentProgramAndDisplayOutput()<cr>

"nnoremap ,<space> :nohlsearch<CR>
    

"""""""""""""""""""""""""""""""""""""""""
" INSERT MODE

" [ENTER] 
" * Carriage Return
" * Set indentation of next line equal to current line
" imap <cr> <c-o> :call LineBreak() <cr>
"inoremap <CR> <CR><esc>:call LineBreak()<cr><i>

"bring <esc> closer
inoremap jk <esc>

"autocomplete {}
inoremap {<CR> {<CR>}<Esc>ko

"autocomplete ()
inoremap ( ()<left>

"autocomplete []
inoremap [ []<left>

"autocomplete \"\"
inoremap " ""<left>

"autocomplete ''
inoremap ' ''<left>

"authocomplete ``
inoremap ` ``<left>
