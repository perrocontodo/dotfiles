" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use ~/tmp as swap file directory
set dir=~/tmp

" Enable backup file, and save it to tmp
set backup
set backupdir=~/tmp

" Enable undo file, and save it to tmp
set undofile
set undodir=~/tmp

" Longer history
set history=500

" Show the cursor position on the right lower corner
set ruler

" Show info about the current command
set showcmd

" Enable incremental search. Vim starts searching with 1st character
set incsearch

" Auto indent based on file type
filetype plugin indent on

" Show row numbers on the left
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Disable the welcome message when opening Vim with no file
set shortmess+=I

" Enable syntax highlighting
syntax on

" Use dark background
set background=dark

" Use this color scheme
let g:solarized_termtrans = 1
colorscheme solarized

" Use this font when in GUI
set guifont=Consolas:h12

" Remove the option to 'tear off' menus
let &guioptions = substitute(&guioptions, "t", "", "g")

" Enable mouse support
if has('mouse')
  set mouse=a
endif

" If GUI, enable highlighting during search
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

" Show long lines.
"highlight LongLine guibg=red ctermbg=red
"match LongLine /\%>79v.\+/

" Use :make to see syntax errors. (:cn and :cp to move around
"set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Use F8 to open TagBar
nmap <F8> :TagbarToggle<CR>

" Set F2 to open a tab with the tag definition
set tags+=~/tmp/tags
map <F2> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <F2> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" Auto insert closing parenthesis, braces and quote mark
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

" Show status bar and set it up
set laststatus=2
set statusline=%F%m%r%h%w\ [%Y\ %{&ff}]\ \ [%l/%L]\ (%p%%)\ \ %c

let mapleader = ","
nnoremap <silent> <leader>n :nohlsearch<CR>
map <C-l> <C-]>
command! Q q

set list listchars=tab:��,trail:�

set browsedir=buffer
