    " turn off numbering
function! NumbersOff()
    set nonu
    set nornu
    endfunc

    " turn on numbering
function! NumbersOn()
    set nu
    set rnu
    endfunc

    " toggle numbering
function! NumbersToggle()
    set nu!
    set rnu!
    endfunc

function! CursorMoveLeft()
    let r = line('.')
    let c = col('.')
    if(c == 1 && r > 1)
        call cursor(r-1, '$')
        call cursor(r-1, col('$'))
    else
        call cursor(r, c-1)
    endif
endfunc

function! CursorMoveRight()
    let r = line('.')
    let c = col('.')
    if(c >= col('$')-1 && r < line('$')-1)
        call cursor(r+1, 1)
    else
        call cursor(r, c+1)
    endif
endfunc


