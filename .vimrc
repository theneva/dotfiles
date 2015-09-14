set nocompatible " iMproved
filetype off

" Include Vundle in runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'easymotion/vim-easymotion'

Plugin 'mattn/emmet-vim'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin on

filetype plugin indent on

" User config
syntax on
set relativenumber

" Disable annoying markdown folding
set nofoldenable

set expandtab
set shiftwidth=4
set softtabstop=4

set wrap
set linebreak

" Save with ctrl + s
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a

" Disable arrow keys in all modes
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

" Disable silly delete/backspace, <C-h> all the way!
noremap <backspace> <nop>

" Remove need to move back and forth to find the cursor after searching
set cursorline

" Show three lines above and below the current window
set scrolloff=3

" Automatically load .vimrc config when changes are saved
autocmd! bufwritepost .vimrc source %

" Easymotion config
" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

" backspace over everything in insert mode
set backspace=indent,eol,start 

" Let the syntax highlighting know that the terminal is black
set background=dark

