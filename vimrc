" ~/.vimrc

set tabstop=2       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

set expandtab

set background=light " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set mouse=a         " Enable the use of the mouse.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set number          " Show line numbers.

set cursorline		" highlight current line

set noerrorbells	" shut up the beep

set wildmenu

set nocompatible

set laststatus=2

set statusline=%<\ %t\ %m%r%y%w%=Col:\ \%c\ Lin:\ \%l\/\%L\ 

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
"Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-rails.git'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'vim-scripts/ShowTrailingWhitespace'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype on
filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
syntax on
colorscheme Tomorrow

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" use ,gf to go to file in a vertical split
nnoremap <silent> ,gf :vertical botright wincmd f<CR>

let mapleader = ","

" Fix up C-motion keys
map  <Esc>[1;5A <C-Up>
map! <Esc>[1;5A <C-Up>
map  <Esc>[1;5B <C-Down>
map! <Esc>[1;5B <C-Down>
map  <Esc>[1;5C <C-Right>
map! <Esc>[1;5C <C-Right>
map  <Esc>[1;5D <C-Left>
map! <Esc>[1;5D <C-Left>
map  <Esc>[1;5F <C-End>
map! <Esc>[1;5F <C-End>
map  <Esc>[1;5H <C-Home>
map! <Esc>[1;5H <C-Home>
map  <Esc>[2;5~ <C-Insert>
map! <Esc>[2;5~ <C-Insert>
map  <Esc>[3;5~ <C-Delete>
map! <Esc>[3;5~ <C-Delete>
map  <Esc>[5;5~ <C-PageUp>
map! <Esc>[5;5~ <C-PageUp>
map  <Esc>[6;5~ <C-PageDown>
map! <Esc>[6;5~ <C-PageDown>
