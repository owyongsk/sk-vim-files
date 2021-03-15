" Load pathogen
call pathogen#infect()
syntax on

" Prevent pathogen from self-sourcing in git submodules
let g:pathogen_disabled = ['pathogen']

" Loads the different filetype
filetype plugin indent on

" Ruby
set tabstop=2 shiftwidth=2 expandtab " no of spaces for indenting

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
set mouse=a

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
colorscheme badwolf

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

" Bind to open the file
map <leader>, :!open %<cr>

" quick macro binding
nnoremap <leader>q @q

" Pretty print JSON
map <leader>j :%!jq .<CR>

" Auto delete whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" Binding for quick visual mode fold
vnoremap <leader>f vzf

" Bind Simple Align
vmap <Enter> <Plug>(EasyAlign)

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
nmap <Leader>rb :SlimuxShellRun be m <C-R>=expand("%:f")<CR><CR>
nmap <Leader>rl :SlimuxShellLast<CR>
nmap <Leader>rc :SlimuxShellRun be rubocop --require rubocop-airbnb -a <C-R>=expand("%:f")<CR><CR>

" Copy to clipboard on Mac
nmap <Leader>rr :%!pbcopy<CR>u
vmap <Leader>rr :!pbcopy<CR>u

" SuperTab Settings
let g:SuperTabDefaultCompletionType = "context"

" Fred and Godwin Settings
nmap <tab> :bn<CR>
nmap <s-tab> :bp<CR>

" share settings
if $TMUX =~ "pair"
 source /home/share/vimrc.share
endif

" For using undo-ing when using buffers, thanks to Edward Fung
" set hidden

" Make VIM transparent background work better, from
" http://stackoverflow.com/questions/21572179/
hi NonText ctermbg=none
hi Normal ctermbg=none

" Ignore test/ for CtrlP
set wildignore+=*/test/*,*/node_modules/*,*/static/*,*/dist/*,*.swp
" let g:ctrlp_custom_ignore = 'test'

" Use rg for ctrlp and ack
set grepprg=rg\ --color=never
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'

let g:ackprg = 'rg --vimgrep --no-heading'

" Ale
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'python': ['yapf']}
let g:ale_sql_sqlformat_options = '-a'
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 0
