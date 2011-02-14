function! SwapArgumentRight()
    " TODO Don't leave the search pattern on at the end of the function
    " move back to the first left parenthesis or space and then one char right
    normal ?[ (]l
    " delete until the next comma into register z
    normal "zdt,
    " delete the following comma and possible space
    normal dw
    " move forward to the next right parenthesis or comma
    normal /[,)]
    " type ', ' then paste in the earlier deleted keyword, exit insert mode
    normal i, z
    " go back to the first comma to the left of the cursor
    normal F,
    " finally go one word back to end up at the beginning of the same word
    " you swapped left
endfunction

command! SwapArgs call SwapArgumentRight()
