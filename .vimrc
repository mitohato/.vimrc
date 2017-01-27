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
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
  endfor
syntax on

highlight CursorLine cterm=none ctermbg=none

autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp.txt
autocmd BufNewFile *.c 0r $HOME/.vim/template/c.txt
autocmd BufNewFile *.java 0r $HOME/.vim/template/java.txt
inoremap <silent> @@ <ESC>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<left>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap[ []<left>
"noremap< <><left>
inoremap " ""<left>
inoremap ' ''<left>

function! Hard ()
 noremap <Up> <Nop>
 noremap <Down> <Nop>
 noremap <Right> <Nop>
 noremap <Left> <Nop>
endfunction

function! Easy ()
 noremap <Up> <Up>
 noremap <Down> <Down>
 noremap <Right> <Right>
 noremap <Left> <Left>
endfunction

command! Hard call Hard()
command! Easy call Easy()
