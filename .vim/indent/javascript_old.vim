" Vim indent file
" Language:	JavaScript
" Author:	Ryan (ryanthe) Fabella <ryanthe at gmail dot com>
" URL:		-
" Last Change:  2007 september 25

if exists('b:did_indent')
  finish
endif
let b:did_indent = 1
 
setlocal indentexpr=GetJsIndent()
setlocal indentkeys=0{,0},0),:,!^F,o,O,e,*<Return>,=*/
" Clean CR when the file is in Unix format
if &fileformat == "unix" 
    silent! %s/\r$//g
endif
" Only define the functions once per Vim session.
if exists("*GetJsIndent")
    finish 
endif
function! GetJsIndent()
    let pnum = prevnonblank(v:lnum - 1)
    if pnum == 0
       return 0
    endif
    let line = getline(v:lnum)
    let pline = getline(pnum)
    let ind = indent(pnum)
    
    " pline was a { [ (
    if pline =~ '{\s*$\|[\s*$\|(\s*$'
	let ind = ind + &sw
    endif
    
    " if pline ended with ; and line starts with }
    if pline =~ ';\s*$' && line =~ '^\s*}'
        let ind = ind - &sw
    endif
    
    " if pline had a ] and line is ),
    if pline =~ '\s*]\s*$' && line =~ '^\s*),\s*$'
      let ind = ind - &sw
    endif

    " if pline had a ] and line is },
    if pline =~ '\s*]\s*$' && line =~ '^\s*}\s*$'
      let ind = ind - &sw
    endif
    
    " if line is }); or ); and pline did not end with ;
    if line =~ '^\s*});\s*$\|^\s*);\s*$' && pline !~ ';\s*$'
      let ind = ind - &sw
    endif
    
    " if line starts with }) and pline was ,
    if line =~ '^\s*})' && pline =~ '\s*,\s*$'
      let ind = ind - &sw
    endif
    
    " if line is }(); and pline was }
    if line =~ '^\s*}();\s*$' && pline =~ '^\s*}\s*$'
      let ind = ind - &sw
    endif

    " if line is }),
    if line =~ '^\s*}),\s*$' 
      let ind = ind - &sw
    endif

    " if pline was } and line is ),
    if pline =~ '^\s*}\s*$' && line =~ '),\s*$'
       let ind = ind - &sw
    endif
   
    " if pline was for and line is )
    if pline =~ '^\s*for\s*' && line =~ ')\s*$'
       let ind = ind + &sw
    endif

    " line is } or ] or }, or [); or }] or }; or }) or }).el
    " and pline was not ; or ]
    " and line not start with {
    " and line is not }
    if line =~ '^\s*}\s*$\|^\s*]\s*$\|\s*},\|\s*]);\s*\|\s*}]\s*$\|\s*};\s*$\|\s*})$\|\s*}).el$' && pline !~ '\s*;\s*$\|\s*]\s*$' && line !~ '^\s*{' && line !~ '\s*{\s*}\s*'
          let ind = ind - &sw
    endif

    " if pline was the start of comment /*
    if pline =~ '^\s*/\*'
      let ind = ind + 1
    endif

    " if pline was end of comment */
    if pline =~ '\*/$'
      let ind = ind - 1
    endif
    return ind
endfunction
