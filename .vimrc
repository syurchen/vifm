" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set encoding=utf-8

:set noeol

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

autocmd FileType php setlocal noeol binary tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" --- Python ---
"autocmd FileType python set completeopt-=preview 
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 


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

Plugin 'beyondwords/vim-twig'

Bundle 'stephpy/vim-php-cs-fixer'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'chrisbra/NrrwRgn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin('~/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <leader>a :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>

autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

let g:fzf_action = {
  \ 'return': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:php_cs_fixer_config_file = '$HOME/.php_cs'
"autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
nnoremap <leader>f :!cp % /tmp/fixed.php; php-cs-fixer --config=$HOME/.php_cs fix /tmp/fixed.php; vimdiff % /tmp/fixed.php<cr>


set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
