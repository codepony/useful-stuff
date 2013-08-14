" Usability:
set nocompatible        " Disable vi-compatibility
set spell spelllang=en  " Because you edit text with it too, (de for German)

" User interface:
syntax on
set laststatus=2        " For a statusbar in vim
set statusline=%F%m%r%h%w\ %=[FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set number              " line numbers
set encoding=utf-8      " Necessary to show Unicode glyphs
set t_Co=256            " Explicitly tell Vim that the terminal supports 256 colors

" Code Folding:
set foldlevel=1
set nofoldenable        " Not folded per default
set foldmethod=indent   

" Searching:
set showmatch           " Show matching brackets.
set hlsearch            " Highlight search things
set incsearch           " Make search act like search in modern browsers
set ignorecase          " Ignore case when searching
set magic               " Set magic on, for regular expressions
let hlstate=0           " A litle bit of cheating to turn hlsearch on/off by pressing F4
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Security:
set modelines=0         " Both should do the same but sure is sure
set nomodeline          " Disables the modeline feature, because there were exploits for it and it's still a risk

" Special Syntax for some filetypes:
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType haskell set tabstop=3|set shiftwidth=3|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType lisp set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType erlang set tabstop=4|set shiftwidth=8|set expandtab


" pathogen-pluginmanager - recommended! https://github.com/tpope/vim-pathogen
filetype plugin indent on
execute pathogen#infect()

" Set special colorsheme - recommended! https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors = 16
colorscheme solarized
set background=dark 

" NerdTree + NerdTreeTabs - recommended! https://github.com/jistr/vim-nerdtree-tabs
nnoremap <F5> :NERDTreeToggle<CR>

" gundo - visual undo tree https://github.com/sjl/gundo.vim
nnoremap <F6> :GundoToggle<CR> 

" vim-flake8 - pep8 check for python https://github.com/nvie/vim-flake8
let g:flake8_max_line_length=120
autocmd BufWritePost *.py call Flake8()

" slimv - https://bitbucket.org/kovisoft/slimv - SLIME for vim
let g:lisp_rainbow=1    " For the lisper in you

" Additional installed, but no config needed:
" git://github.com/msanders/snipmate.vim.git - code snippets
" git://github.com/tpope/vim-fugitive.git - A git wrapper for vim
" git://github.com/tpope/vim-surround.git - easier to surround things
