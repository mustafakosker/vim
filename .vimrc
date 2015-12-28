syntax enable
set showcmd
set cursorline		" highlight current line
set incsearch		" search as characters are entered
"set hlsearch		" highlight matches
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set wildmenu		" visual autocomplete for command menu
set showmatch		" highlight matching [{()}]
set paste			" do not modify the text pasted
set encoding=utf-8
syntax on

filetype indent on	" load filetype-specific indent files

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
execute pathogen#infect()
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1

call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>r :<C-u>Unite -smartcase -start-insert file_rec<CR>
nnoremap <silent> <leader>b :<C-u>Unite -smartcase buffer bookmark<CR>
inoremap jj <ESC>
nnoremap <leader><space> :nohlsearch<CR>	" turn off search highlight

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]
