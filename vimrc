""""" Functions
" Toggles between relative and normal line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

function! ShowColumn85 ()
    if exists('+colorcolumn')
        " Show column 85
        if &colorcolumn == ""
            set colorcolumn=85
        else
            set colorcolumn=
        endif
    endif
endfunction

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Make TAB expand to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

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

" Highlight matching [{()}]
set showmatch

" Highlight all the matches
set hlsearch

" Auto indent based on file type
filetype plugin indent on

" Show row numbers on the left
set number

" Call the function to toggle the line numbering mode
"nnoremap <leader>r :call NumberToggle()<cr>

" Set relative numbers for line numbering
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Disable the welcome message when opening Vim with no file
set shortmess+=I

" Enable syntax highlighting
syntax on

" Use dark background
set background=dark

" Use this color scheme
"let g:solarized_termtrans = 1
colorscheme solarized

" Use this font when in GUI
"set guifont=Consolas:h12

" Remove the option to 'tear off' menus
let &guioptions = substitute(&guioptions, "t", "", "g")

" Enable mouse support
if has('mouse')
  set mouse=a
endif

" If GUI, enable highlighting during search
"if &t_Co > 2 || has("gui_running")
"  set hlsearch
"endif

" Show long lines.
"highlight LongLine guibg=red ctermbg=red
"match LongLine /\%>79v.\+/

" Use :make to see syntax errors. (:cn and :cp to move around
"set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Use F8 to open TagBar
"nmap <F8> :TagbarToggle<CR>

" Set F2 to open a tab with the tag definition
"set tags+=~/tmp/tags
"map <F2> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
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

set list listchars=tab:»·,trail:·

set browsedir=buffer

" Show where the 85th column is
if (exists('+colorcolumn'))
    set colorcolumn=85
    highlight ColorColumn ctermbg=DarkBlue
endif

" In case we want to remove the highlighted column
"nnoremap <leader>c :highlight clear ColorColumn<CR>
nnoremap <leader>c :call ShowColumn85()<CR>

" Learn vim the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Change modes with jj, instead of ESC
inoremap jj <ESC>

" Split with a vertical window, and go to it
nnoremap <leader>w <C-w>v<C-w>l

" Easier navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

