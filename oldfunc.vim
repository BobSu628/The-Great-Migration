" Some functions for my fav editor :)
              
"source ~/vimscripts/run_program.vim

"
function! LineBreak()
    let lline = getline(line('.')-1)
    let index = 0
    if lline == ''
        return
    endif
 
    let str = ''
    
    while index < len(lline)
        let cur = lline[index]
        
        let index += 1        
    endwhile 
    call setline('.', str)
endfunc
    
    " run current program (if the file is executable)
function! RunCurrentProgram()
    let splitName = split(@%, '\.')
    let name = splitName[len(splitName)-2]
    let extension = splitName[len(splitName)-1]

    let programCode = -1

    w

    if extension ==? 'C'
    " run the C program
    call RunCProgram(name)
    let programCode = 0
    else
    " print error message here

    endif

    return programCode

    endfunc

    " run current program and display standard output
    " * program is executable
    " * output can be displayed in an interface
function! RunCurrentProgramAndDisplayOutput()

    let programCode = RunCurrentProgram()

    if programCode == -1
    return -1
    endif

    let splitName = split(@%, '\.')
    let name = splitName[len(splitName)-2]

    if programCode == 0
    execute "! ./" . name
    endif

endfunc        

    " call upon carriage return
    " * perform carriage return
    " * set indent the same as previous line
"function! CarriageReturn()
    
    
 "   let l:cursor_pos = getpos(".")


    " an EasterEgg!
function! EasterEgg()
    echo g:name "is a God ;)"
endfunc


