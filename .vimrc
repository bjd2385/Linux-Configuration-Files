syntax on
set tabstop=4       " set tabs to 4 spaces
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " convert tabs to spaces
set number          " line numbering

set showcmd         " show last command in bottom-right

set cursorline      " underline the line your cursor is on, so it's
                    " easier to go back after flipping between windows

set showmatch       " highlight matching [{()}]

set incsearch
set hlsearch        " search as you're typing

set t_Co=256        " Allow 256 colors; without only supports 8
 
colorscheme badwolf " https://github.com/sjl/badwolf/

set autoindent      " indent automagically on enter

"execute pathogen#infect()

"Plugin 'jelera/vim-javascript-syntax'

"so ./test/_setup.vim
let delimitMate_expand_cr = 1
filetype indent plugin on
