
""" vimconf is not vi-compatible {{{
set nocompatible              

filetype off                  " required


""" Automatically create needed files and folders on first run (*nix only) {{{
    call system("mkdir -p $HOME/.vim/{swap,undo}")
    if !filereadable($HOME."/.vimrc.plugins") | call system("touch $HOME/.vimrc.plugins") | endif
    if !filereadable($HOME."/.vimrc.first") | call system("touch $HOME/.vimrc.first") | endif
    if !filereadable($HOME."/.vimrc.last") | call system("touch $HOME/.vimrc.last") | endif
""" }}}


""" Automatically setting up Vundle {{{
""" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p $HOME/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
	let has_vundle=0
endif
""" }}}

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'rdnetto/YCM-Generator'
  Plugin 'tpope/vim-surround'
  Plugin 'thinca/vim-quickrun'
" Plugin 'scrooloose/syntastic'
" Plugin 'tpope/vim-fugitive'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'SirVer/ultisnips'
" Plugin 'ervandew/supertab'
  Plugin 'honza/vim-snippets'
  Plugin 'Raimondi/delimitMate'
  Plugin 'michalliu/sourcebeautify.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set hlsearch
set relativenumber
set number
set ignorecase
set smartcase
set cursorline
set autoindent
set incsearch
set background=dark
set history=500
set ttyfast 
set backspace=indent,eol,start          " smart backspace

filetype plugin indent on               " detect file plugin+indent
set showcmd				" show cmds being typed



map <F3> :!clear && gcc -Wall -lncurses -o op.a % && ./op.a
" You Complete Me
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" Ultisnips
"

let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
