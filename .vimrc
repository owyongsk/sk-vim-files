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
map <silent> <C-d> :NERDTreeToggle<CR>:set rnu<CR>

" skowyong's settings
set ru
set nu
colorscheme herald
set gfn=Consolas
set history=50
set cursorline cursorcolumn!
set fileencodings=utf-8
autocmd BufEnter * set relativenumber
set ignorecase
set smartcase
set tildeop

" Steve Losh's crazy stuff
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons

" Bind tag to jump to the beginning or end of tag
nnoremap <tab> %
vnoremap <tab> %

" Bind to open the file
map <leader>, :!open %<cr>

" Disabling arrow keys to encourage moving in normal mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Some sort of search stuff
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :set invhlsearch<cr>

" Closetag settings
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Some sort of indentation
set autoindent
set smartindent

" For copying code outside
set pastetoggle=<C-o>

" SuperTab Settings
let g:SuperTabDefaultCompletionType = "context"
