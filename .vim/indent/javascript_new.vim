" Vim indent file
" Language:	JavaScript
" Author:	Sam Grönblom <sgronblo@gmail.com>
" URL:		-
" Last Change:  2009 january 28

"if exists('b:did_indent')
  "finish
"endif
"let b:did_indent = 1
 
setlocal indentexpr=GetJsIndent()
setlocal indentkeys=0{,0},0),:,!^F,o,O,e,*<Return>,=*/
" Clean CR when the file is in Unix format
if &fileformat == "unix" 
    silent! %s/\r$//g
endif
" Only define the functions once per Vim session.
"if exists("*GetJsIndent")
    "finish 
"endif
function! GetJsIndent()
    let pnum = prevnonblank(v:lnum - 1)
    if pnum == 0
       return 0
    endif
    let line = getline(v:lnum)
    " remove comments at the end
    let line = substitute(line, '\s*//.*$', '', '')
    " remove whitespace at the start
    let line = substitute(line, '^\s*', '', '')
    echo line
    let pline = getline(pnum)
    let ind = indent(pnum)
    
    let indenters = '\((\|{\|[\)$'
    let deindenters = '\()\|}\|]\)$'
    
    " if last line was an indenter */
    if pline =~ indenters
        let ind = ind + &sw
    elseif
        line =~ deindenters
        let ind = ind - &sw
    endif
    return ind
endfunction
