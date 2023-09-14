let b:coc_diagnostic_disable=1

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/neoclide/coc.nvim'
call plug#end()

:set number
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
nnoremap <C-b> :! make build && make run<CR>
nnoremap <C-a> :wa<CR>
nnoremap <C-t> :! xfce4-terminal<CR>


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
