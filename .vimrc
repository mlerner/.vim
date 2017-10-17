set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'ensime/ensime-vim'
Plugin 'vim-syntastic/syntastic'

execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set background=dark
colorscheme molokai

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class
filetype on
filetype plugin indent on
filetype plugin on
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set hlsearch
set incsearch
set showmatch
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap <leader>w <C-w>v<C-w>l 
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
inoremap jj <Esc>

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

 "inoremap <expr><C-g>     neocomplete#undo_completion()
  "inoremap <expr><C-l>     neocomplete#complete_common_string()

   "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"    function! s:my_cr_function()
"	         return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"	 endfunction
"	 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"	 inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"	 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"	 inoremap <expr><C-y>  neocomplete#close_popup()
"	 inoremap <expr><C-e>  neocomplete#cancel_popup()

set runtimepath^=~/.vim/bundle/ctrlp.vim
" disable current line hilite
 set nocursorline
"
" " color to col 128
 set synmaxcol=128
map <Leader>j !python -m json.tool<CR>

" scala stuff
:let maplocalleader = "\\"
nnoremap <localleader>t :EnTypeCheck<CR>
au FileType scala nnoremap <localleader>df :EnDeclaration<CR>
au BufWritePost *.scala :EnTypeCheck

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_scala_checkers = ['scalac']
