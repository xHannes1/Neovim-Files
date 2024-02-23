let b:coc_diagnostic_disable=1
let g:tmpl_search_paths = ['~/.config/nvim/templates']

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tibabit/vim-templates'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

:set number
:set relativenumber
:set autoindent
:set smartindent
:set noexpandtab
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
:set termguicolors
:colorscheme gruvbox
:syntax on

nnoremap <C-f> :NERDTree<CR>
nnoremap <C-b> :wa<CR> :! make build && make run<CR>
nnoremap <C-a> :wa<CR>
nnoremap <C-t> :! xfce4-terminal<CR>
nnoremap <C-s> :vsplit<CR>
nnoremap <S-s> :split<CR>
nnoremap <F3> :set hlsearch!<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
