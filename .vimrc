" Settings

filetype off
call pathogen#infect()

let Tlist_WinWidth = 40
let Tlist_Sort_Type = "name"
let g:tex_flavor = "latex"
let g:ackprg = "ack-grep -H --nocolor --nogroup --column"
let loaded_matchparen = 1
let g:pyindent_open_paren = '&sw'
let g:syntastic_enable_signs = 1
let g:CommandTMaxFiles = 20000

set grepprg=grep\ -nH\ $*\ /dev/null
set guifont=Andale\ Mono\ 12
set guioptions-=T
set incsearch
set laststatus=2
set linebreak
set nocompatible
set nojoinspaces
set shiftwidth=4
set smartcase
set softtabstop=4
set tabstop=4
set scrolloff=3
set whichwrap=h,l,[,],~
"enable mouse to be used in all modes
set mouse=a
set wildmenu
set printdevice=black
set hidden
set hlsearch
set autoread
set list
set expandtab
set listchars=tab:▷\ ,trail:·,extends:⋯,precedes:⋯,nbsp:␣
set backspace=eol,indent,start

colorscheme gardener

if &diff
    colorscheme molokai
endif

" Show the syntastic status flag in status line
set statusline=%<%f\ %#errormsg#%{SyntasticStatuslineFlag()}%*%{fugitive#statusline()}%h%m%r%=%-14.(%l,%c%V%)\ %P

command W w
" Mappings
noremap <Up> gk
noremap <Down> gj
noremap <F1> :Rake<CR>
noremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <C-h> :bprevious<CR>
nnoremap <silent> <C-l> :bnext<CR>
if has('mac')
    nnoremap <T-Left> <C-w><Left>
    nnoremap <T-Right> <C-w><Right>
    nnoremap <T-Up> <C-w><Up>
    nnoremap <T-Down> <C-w><Down>
else
    nnoremap <C-Left> <C-w><Left>
    nnoremap <C-Right> <C-w><Right>
    nnoremap <C-Up> <C-w><Up>
    nnoremap <C-Down> <C-w><Down>
end
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <Space> i<Space><Esc>
" just initialize a search for word under cursor without jumping to next
" occurence
nnoremap * :let @/ = "\\<<C-R><C-W>\\>"<CR>
" mappings to search for the highlighted word when pressing * or # in visual mode
vnoremap * <Esc>/<c-r>=escape(@*, '\/.*$^~[]')<CR><CR>
vnoremap # <Esc>?<c-r>=escape(@*, '\/.*$^~[]')<CR><CR>

filetype plugin indent on
syntax on

" Highlight EOL whitespace, stolen from https://github.com/bronson/vim-trailing-whitespace
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" the above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

autocmd BufReadPost quickfix set cursorline
autocmd FileType ruby set sw=2
autocmd FileType javascript iabbr $# $('#
autocmd FileType php set expandtab
autocmd FileType tex set tw=70
autocmd FileType python set tw=110
autocmd FileType python source ~/.vim/extraplugin/python.vim
autocmd BufRead testcases.txt syntax match DiffAdd /Test types: .*/
