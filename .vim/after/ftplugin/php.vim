function! PhpClassToPath(classname)
    let l:underscoresToSlashes = substitute(a:classname, "_", "/", "g")
    return l:underscoresToSlashes . ".php"
endfunction

setlocal includeexpr=PhpClassToPath(v:fname)
