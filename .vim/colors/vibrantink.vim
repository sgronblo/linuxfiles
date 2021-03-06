" Vim color file
" Converted from Textmate theme Vibrant Ink using Coloration v0.2.5 (http://github.com/sickill/coloration)
" #212722
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vibrantink"

hi Cursor  guifg=NONE guibg=#ffffff gui=NONE
hi Visual  guifg=NONE guibg=#2e4034 gui=NONE
hi CursorLine  guifg=NONE guibg=#333300 gui=NONE
hi CursorColumn  guifg=NONE guibg=#333300 gui=NONE
hi LineNr  guifg=#808080 guibg=#000000 gui=NONE
hi VertSplit  guifg=#303030 guibg=#303030 gui=NONE
hi MatchParen  guifg=#ff6600 guibg=NONE gui=NONE
hi StatusLine  guifg=#ffffff guibg=#455354 gui=bold
hi StatusLineNC  guifg=#ffffff guibg=#303030 gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#2e4034 gui=NONE
hi IncSearch  guifg=#FA3253 guibg=#83A1A8 gui=NONE
hi Search  guifg=#ffffff guibg=#455354 gui=NONE
hi Directory  guifg=#339999 guibg=NONE gui=NONE
hi Folded  guifg=#9933cc guibg=#000000 gui=NONE

hi Normal  guifg=#ffffff guibg=#161616 gui=NONE
hi Boolean  guifg=#339999 guibg=NONE gui=NONE
hi Character  guifg=#339999 guibg=NONE gui=NONE
hi Comment  guifg=#9933cc guibg=NONE gui=NONE
hi Conditional  guifg=#ff6600 guibg=NONE gui=NONE
hi Constant  guifg=#339999 guibg=NONE gui=NONE
hi Define  guifg=#ff6600 guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#339999 guibg=NONE gui=NONE
hi Function  guifg=#ffcc00 guibg=NONE gui=NONE
hi Identifier  guifg=#A8D4AB guibg=NONE gui=italic
hi Keyword  guifg=#ff6600 guibg=NONE gui=NONE
hi Label  guifg=#66ff00 guibg=NONE gui=NONE
hi NonText  guifg=#404040 guibg=#000000 gui=NONE
hi Number  guifg=#339999 guibg=NONE gui=NONE
hi Operator  guifg=#ff6600 guibg=NONE gui=NONE
hi PreProc  guifg=#dde93d guibg=NONE gui=NONE
hi Special  guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey  guifg=#404040 guibg=#222200 gui=NONE
hi Statement  guifg=NONE guibg=NONE gui=NONE
hi StorageClass  guifg=NONE guibg=NONE gui=NONE
hi String  guifg=#66ff00 guibg=NONE gui=NONE
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#ffffff guibg=NONE gui=bold
hi Todo  guifg=#9933cc guibg=NONE gui=inverse,bold
hi Type  guifg=#A8D4AB guibg=NONE gui=italic
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyAccess guifg=#C0CB34 guibg=NONE gui=NONE
hi rubyClass  guifg=#ff6600 guibg=NONE gui=NONE
hi rubyFunction  guifg=#ffcc00 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#339999 guibg=NONE gui=NONE
hi rubyConstant  guifg=WHITE guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#66ff00 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=white guibg=NONE gui=NONE
hi rubyInclude  guifg=#dde93d guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#ffffff guibg=NONE gui=NONE
hi rubyRegexp  guifg=#44b4cc guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#44b4cc guibg=NONE gui=NONE
hi rubyEscape  guifg=#339999 guibg=NONE gui=NONE
hi rubyControl  guifg=#ff6600 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#ff6600 guibg=NONE gui=NONE
hi rubyException  guifg=#dde93d guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=white guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#999966 guibg=NONE gui=NONE
hi rubyRailsARClassMethod  guifg=#999966 guibg=NONE gui=NONE
hi rubyAttribute guifg=#999966 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#999966 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=NONE guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=NONE guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#9933cc guibg=NONE gui=NONE
hi erubyRailsMethod  guifg=NONE guibg=NONE gui=NONE
hi htmlTag  guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag  guifg=NONE guibg=NONE gui=NONE
hi htmlTagName  guifg=NONE guibg=NONE gui=NONE
hi htmlArg  guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#339999 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#ffcc00 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=#ffffff guibg=NONE gui=NONE
hi yamlAlias  guifg=#ffffff guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#66ff00 guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=NONE guibg=NONE gui=NONE
hi cssColor  guifg=#339999 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#ff6600 guibg=NONE gui=NONE
hi cssClassName  guifg=#ff6600 guibg=NONE gui=NONE
hi cssValueLength  guifg=#ffffff guibg=NONE gui=NONE
hi cssCommonAttr  guifg=NONE guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE
