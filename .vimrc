" Modularized vim configuration
" Sarkis Varozian <svarozian@gmail.com>

" Settings

" General
set nocompatible
filetype plugin indent on
set autowrite
set backspace=indent,eol,start
set hidden
set encoding=utf-8
if $TMUX == ''
    set clipboard+=unnamed
endif

" Folding
silent! set foldcolumn=0
silent! set foldenable
silent! set foldlevel=10
silent! set foldmethod=syntax
"silent! set foldmarker={{{,}}}
"silent! set foldmethod=marker
silent! set foldopen-=search
silent! set foldopen-=undo

" GUI
silent! set guifont=Monaco\ for\ Powerline:h12
silent! set guioptions-=T
silent! set guioptions-=r
silent! set guioptions-=L

" Tabs
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4

" Temp files
set backup
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/
silent! set undodir=~/.vim/tmp/
silent! set undofile

" Mouse
silent! set mouse=a

" Display
set display+=lastline
set ttyfast
set showcmd
set showmode
set showmatch
set novisualbell
set number
set relativenumber
set ruler
set wrap
set laststatus=2
set shortmess+=I
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
"set statusline=(%{strlen(&ft)?&ft:'?'},%{&fenc},%{&ff})\ \ %-9.(%l,%c%V%)\ \ %<%P
set scrolloff=3
set wildmenu
set wildignore+=*.pyc,*/.git/*,*/.svn/*,*/.virtual_env/*,*/.mail/*,*.swp
set wildmode=list:longest
"set wildmode=longest,full
set completeopt=longest,menu

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Supporting files
silent! runtime plugins.vim

" Colors
set t_Co=256
set background=dark
silent! colorscheme tir_black
syntax on

" Relative Number
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
