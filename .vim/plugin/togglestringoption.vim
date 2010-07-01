function! ToggleCharInString(optionname, char)
    let command="let hasOption=(&".a:optionname."=~a:char)"
    exe command
    if hasOption
	exe "set ".a:optionname."-=".a:char
    else
	exe "set ".a:optionname."+=".a:char
    endif
    echo "New value of ".a:optionname." is ".&formatoptions
endfunction
