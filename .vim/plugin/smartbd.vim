function! Bd()
    let curbuf = bufnr('%')
    bnext
    exec "bdelete ".curbuf
endfunction

command Bd call Bd()
