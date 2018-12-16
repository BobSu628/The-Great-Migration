" Some functions for my fav editor :)

source ~/vimscripts/run_program.vim 


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


" an EasterEgg!
function! EasterEgg()
    echo g:name "is a God ;)"
endfunc


