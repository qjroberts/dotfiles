"===== Configuration

" Enables some things. Not required, but good for sanity
set nocompatible

" Disable filetype detection
filetype off


"===== Plugins

" Force reloading after plugins
filetype off

" Set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize vundle
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

" Finish initialization
call vundle#end()

" Enable detection, plugins and indenting in one step
filetype plugin indent on


"===== Defaults

" Disable modelines (why? security?)
set modelines=0

" Enable setting the title
set title

" Show current line number, column number, and position
set ruler

" Show line numbers
set number

" Allow backspace over indent, line breaks, and start of insert
set backspace=indent,eol,start

" Ensure UTF-8
set encoding=utf-8

" Show command entered
set showcmd

" Highlight current line
" set cursorline

" Use a POSIX-complient shell (not zsh)
set shell=bash

" Allow better filename completion
set wildmenu

" Only redraw when typing
set lazyredraw

" Enable faster redrawing
set ttyfast

" Hide buffers instead of closing
set hidden

" Don't wrap lines
set nowrap

" Don't beep
set visualbell
set noerrorbells

" Better paste
set pastetoggle=<F2>


"===== Learning

" Enable mouse
"set mouse=a

"===== Search

" Highlight all search matches
set hlsearch

" Enable incremental search
set incsearch

" Make search and replace case-insensitive
set ignorecase

" Make search smarter (case-sensitive if uppercase found)
set smartcase


"===== Theme

" Enable syntax highlighting
syntax on
syntax enable

" Configure background
set background=dark

let g:solarized_termcolors=256

" Set the colour scheme
colorscheme solarized

" Configure font
"set guifont=Roboto\ Mono:h12


"===== Default Syntax

" Display tabs as 2 columns
set tabstop=2

" Insert tabs as 2 columns
set softtabstop=2

" Reindent by 2 columns
set shiftwidth=2

" Automatically indent
set autoindent

" Copy previous indentation on autoindent
set copyindent

" Convert tab to spaces
set expandtab

" Show matching braces
set showmatch


"===== File Types
" Define markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" <TAB>: completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"


"===== Shortcuts

" \s for seeing tabs spaces
nmap <silent> <leader>s :set nolist!<CR>

"nmap <F4> :TagbarToggle<CR>

" F3 to display NERDTree
nmap <F3> :NERDTreeToggle<CR>

" <Ctrl+l> redraws the screen and removes search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"===== Configurations

" Open Godoc in browser
"au FileType go nmap <F6> <Plug>(go-doc-browser)

"===== Golang
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_types = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
