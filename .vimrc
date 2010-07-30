" Settings
let Tlist_WinWidth = 40
let Tlist_Sort_Type = "name"
let g:tex_flavor = "latex"

set directory=~/vimswaps
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
set tabstop=8
set scrolloff=3
set whichwrap=h,l,[,],~
set wildmenu
set printdevice=black
set hidden
set hlsearch
set autoread

if has("gui_running")
    colorscheme django
else
    colorscheme desert256
endif

" Mappings
noremap <Space> <PageDown>
noremap j gj
noremap k gk
noremap <Up> gk
noremap <Down> gj
noremap <F1> :Rake<CR>
noremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <C-h> :bprevious<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <C-pagedown> <C-w>w
nnoremap <C-pageup> <C-w>W
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <BS> hx
nnoremap <Space> i<Space><Esc>
" mappings to search for the highlighted word when pressing * or # in visual mode
vnoremap * <Esc>/<c-r>=escape(@*, '\/.*$^~[]')<CR><CR>
vnoremap # <Esc>?<c-r>=escape(@*, '\/.*$^~[]')<CR><CR>

" Insert <Tab> or complete identifier
" if the cursor is after a keyword character
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

filetype plugin indent on

" highlight whitespace at end of lines as Error
match Error /\s\+$/
autocmd BufReadPost quickfix set cursorline
autocmd FileType ruby set sw=2
autocmd FileType tex set tw=70
autocmd FileType python set tw=110
autocmd FileType python source ~/.vim/extraplugin/python.vim
autocmd BufRead testcases.txt syntax match DiffAdd /Test types: .*/
