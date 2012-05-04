" Load pathogen
call pathogen#infect()
syntax on

" Prevent pathogen from self-sourcing in git submodules
let g:pathogen_disabled = ['pathogen']

" Loads the different filetype
filetype plugin indent on

" Ruby
set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..

" Auto launch NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" NERDTree Toggle Bind
map <silent> <C-D> :NERDTreeToggle<CR>

" skowyong's settings
set ru
set nu
colorscheme herald
set gfn=Consolas
set history=50
set cursorline cursorcolumn!
set fileencodings=utf-8

" Set tildeop
:set tildeop

"Disabling arrow keys to encourage moving in normal mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Indentation
set incsearch
" set autoindent
set smartindent

" For copying code outside
set pastetoggle=<F3>

" SuperTab Settings
let g:SuperTabDefaultCompletionType = "context"
