"===== Defaults
set title
set ruler
set number
set backspace=indent,eol,start

"===== Theme
let &t_Co=256
syntax on
colorscheme hemisu
set background=dark

"===== Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" \n will unhilight search
nmap <silent> <leader>n :silent :nohlsearch<CR>

"===== Indenting
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

"===== Shortcuts

" \s for seeing tabs spaces
nmap <silent> <leader>s :set nolist!<CR>

