function FindTags() 
    let s:tagfile = findfile('tags', '.;') 
    if s:tagfile != '' 
        let &tags = s:tagfile 
    endif 
endfunction 
