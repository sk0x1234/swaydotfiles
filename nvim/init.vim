set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.config/nvim/bundle/Vundle.vim
"set rtp+=~/.config/nvim/plugin/beautifier.vim
"call vundle#begin()
" core plugins
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'ervandew/supertab'
"experimental plugins
"Plugin 'vim-airline/vim-airline'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-surround'
"call vundle#end() 

filetype plugin indent on
syn on se title
" normal settings
set nu 
set ruler
set history=700
set ignorecase
set hlsearch
set showmatch
set nobackup
set noswapfile
set noundofile


"other settings
set laststatus=2
set shell=/bin/bash
colorscheme  base16-eighties
"molokai "badwolf 
"source ~/.vim/.myvimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"set1 tab= 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
"set nowrap "Wrap lines
set wrap "Wrap lines
nnoremap Q <nop>


" set statusline=
" set statusline+=%<\                       " cut at start
" set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
" set statusline+=%-40f\                    " path
" set statusline+=%=%1*%y%*%*\              " file type
" set statusline+=%10((%l,%c)%)\            " line and column
" set statusline+=%P                        " percentage of file


 set statusline=   " clear the statusline for when vimrc is reloaded
 set statusline+=%-3.3n\                      " buffer number
 set statusline+=%f\                          " file name
 set statusline+=%h%m%r%w                     " flags
 set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
 set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
 set statusline+=%{&fileformat}]              " file format
 set statusline+=%=                           " right align
 set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
 set statusline+=%b,0x%-8B\                   " current char
 set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

 " saving readonly file edited in nvim
 "
 cmap w!! w !sudo tee %
 map <c-f> :call JsBeautify()<cr>
