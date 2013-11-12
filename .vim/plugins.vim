" Modularized vim configuration
" Sarkis Varozian <svarozian@gmail.com>

" Plugins

if v:version < 700
    finish
endif

" Vundle setup
if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
    !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle "mileszs/ack.vim"
Bundle "tpope/vim-fugitive"
Bundle "scrooloose/nerdtree"
Bundle "gmarik/vundle"
Bundle "sarkis/tir_black"
Bundle "Lokaltog/vim-powerline"
Bundle "rodjek/vim-puppet"

" Gist settings
"let g:gist_show_private = 1
"let g:gist_post_private = 1
"let g:gist_detect_filetype = 1
"let g:gist_clip_command = 'pbcopy'

" NERD Tree
let NERDTreeIgnore=['\.pyc$','\~$']
map <leader>n :execute 'NERDTreeToggle'<cr>

" NERD Commenter settings
"let NERDCreateDefaultMappings = 0
"let NERDCommentWholeLinesInVMode = 1
"let NERDSpaceDelims = 1
"map <leader>c <plug>NERDCommenterToggle

" Powerline 
"let g:Powerline_symbols = 'fancy'

filetype plugin indent on
