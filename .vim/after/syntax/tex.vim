":hi texSectionOnly guifg=Red gui=underline

 syn region texSectionZone		matchgroup=Underlined start='\\section\>'		 end='\n\ze\s*\\section\>'	fold contains=@texFoldGroup,@texSectionGroup,@Spell
