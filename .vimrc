set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
noremap <silent> <F11> :cal VimCommanderToggle()<CR>

:color desert

noremap <F8> :!!<CR>
noremap <c-t> :set shiftwidth=4<CR>

set smarttab

set autoindent
set expandtab
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" " half tabs
" nnoremap <C-t> :set tabstop=8 softtabstop=0 expandtab shiftwidth=4
" smarttab<CR>
"

autocmd FileType php setlocal noeol binary
