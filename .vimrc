" Load pathogen
call pathogen#infect()
syntax on

" Prevent pathogen from self-sourcing in git submodules
let g:pathogen_disabled = ['pathogen']

" Loads the different filetype
filetype plugin indent on

" Ruby
set expandtab
set ts=2
set sw=2 " no of spaces for indenting

" Auto launch NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" NERDTree Toggle Bind
map <leader>e :NERDTreeToggle<CR>:set rnu<CR>

" skowyong's settings
set nowrap
set ru
set gfn=Consolas
set history=50
set cursorline cursorcolumn!
set fileencodings=utf-8
set ignorecase
set smartcase
set tildeop
set backspace=indent,eol,start

" Relative Number Magic
function! NumberToggle()
  if(&relativenumber ==1)
    set nornu
  else
    set rnu
  endif
endfunc
autocmd BufEnter * set rnu nu
map <leader>n :call NumberToggle()<cr>

" fix quick typo for write
cabbrev W write

" Molokai woot!
set t_Co=256
colorscheme molokai

" Steve Losh's crazy stuff
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
"nnoremap <tab> %
"vnoremap <tab> %

" Bind to open the file
map <leader>, :!open %<cr>

" quick macro binding
nnoremap <leader>q @q

" Bind to turn off everything for easy copy
map <leader>j :only<cr> :set norelativenumber nonumber<cr>

" Bind to delete all trailing white space
map <leader>d :%s/\s\+$//e<cr>

" Binding for quick visual mode fold
vnoremap <leader>f vzf

" Bind Simple Align
vnoremap <cr> :Tabularize /^\s*\S\+<cr>

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

" For pasting outside code with Paste mode
set pastetoggle=<C-o>

" NERDCommenter
let NERDSpaceDelims = 1
let NERDRemoveExtraSpace = 1

" Slimux
nmap <Leader>rb :SlimuxShellRun ruby -Itest <C-R>=expand("%:f")<CR><CR>
nmap <Leader>rl :SlimuxShellLast<CR>
nmap <Leader>rc :SlimuxShellConfigure<CR>

" SuperTab Settings
let g:SuperTabDefaultCompletionType = "context"

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"

" Fred and Godwin Settings
nmap <tab> :bn<CR>
nmap <S-tab> :bp<CR>

" share settings
if $TMUX =~ "pair"
 source /home/share/vimrc.share
endif
