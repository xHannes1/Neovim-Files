call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
call plug#end()

:set number
:set autoindent
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set wrap
:set nobackup
:set nowritebackup
:set updatetime=300
:set cmdheight=1
:set signcolumn=yes
:set ruler
:set visualbell

:syntax on


nnoremap <C-f> :NERDTree<CR>
