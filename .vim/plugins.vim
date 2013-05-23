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
Bundle "tpope/vim-endwise"
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"
Bundle "AndrewRadev/linediff.vim"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-fugitive"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "bingaman/vim-sparkup"
Bundle "tpope/vim-surround"
Bundle "nanotech/jellybeans.vim"
Bundle "wgibbs/vim-irblack"
Bundle "gmarik/vundle"
Bundle "altercation/vim-colors-solarized"
Bundle "guns/jellyx.vim"
Bundle "tir_black"
Bundle "Lokaltog/vim-powerline"
Bundle "sarkis/vim-puppet"
Bundle "tpope/vim-repeat"
"Bundle "kien/ctrlp.vim"
" snipmate
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "snipmate-snippets"
"Bundle "garbas/vim-snipmate"

" Plugin specific settings
" Bufstat settings

"highlight BufferNC ctermfg=248 ctermbg=239
"highlight link Buffer StatusLine
"let g:bufstat_active_hl_group = 'Buffer'
"let g:bufstat_inactive_hl_group = 'BufferNC'
"let g:bufstat_prevent_mappings = 1

" Gist settings
let g:gist_show_private = 1
let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'

" NERD Tree
let NERDTreeIgnore=['\.pyc$','\~$']
map <leader>n :execute 'NERDTreeToggle'<cr>

" NERD Commenter settings
let NERDCreateDefaultMappings = 0
let NERDCommentWholeLinesInVMode = 1
let NERDSpaceDelims = 1
map <leader>c <plug>NERDCommenterToggle

" CtrlP settings
"let g:ctrlp_use_caching = 1
"let g:ctrlp_persistent_input = 0
"let g:ctrlp_cache_dir = $HOME . "/.vim/tmp"
"let g:ctrlp_working_path_mode = 2
"let g:ctrlp_clear_cache_on_exit = 0

" Powerline 
let g:Powerline_symbols = 'fancy'

filetype plugin indent on
