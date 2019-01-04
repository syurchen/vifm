" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
noremap <silent> <F11> :cal VimCommanderToggle()<CR>
map <silent> <C-n> :NERDTreeFocus<CR>

:color desert

noremap <F8> :!!<CR>
noremap <c-t> :set shiftwidth=4<CR>

set smarttab

set autoindent
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" " half tabs
" nnoremap <C-t> :set tabstop=8 softtabstop=0 expandtab shiftwidth=4
" smarttab<CR>
"

autocmd FileType php setlocal noeol binary
" --- Python ---
"autocmd FileType python set completeopt-=preview 
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

"https://vimawesome.com/plugin/youcompleteme

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
