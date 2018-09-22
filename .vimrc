set number
set tabstop=2
set cursorline
set cindent
set title
set shiftwidth=2
set expandtab
set clipboard+=unnamed
set backspace=indent,eol,start
set completeopt=menuone
set nowrap
set showmatch
set autoread
set noswapfile

for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
  endfor
syntax on

highlight CursorLine cterm=none ctermbg=none

autocmd BufNewFile *.cpp 0r $HOME/.ghq/github.com/mitohato/template/cpp.txt
autocmd BufNewFile *.c 0r $HOME/.ghq/github.com/mitohato/template/c.txt
autocmd BufNewFile *.java 0r $HOME/.ghq/github.com/mitohato/template/java.txt
inoremap <silent> jj <ESC>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<left>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap[ []<left>
inoremap " ""<left>
inoremap ' ''<left>

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'udalov/kotlin-vim'

call vundle#end()            " required
filetype plugin indent on    " required

