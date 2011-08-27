" Make sure syntax highlighting is enabled.. OR ELSE
syntax on

" Enable pathogen bundles (see bundles/ directory)
call pathogen#infect()

" Leader!
let mapleader = ','
nmap <leader>q :q<cr>

" Auto reload vimrc when saved
autocmd bufwritepost vimrc source ~/.vimrc

" Better pasting behavior
set nopaste
set pastetoggle=<f12>

set backspace=2
set encoding=utf8
set modeline
set gdefault
set wildmode=longest,list
set nocompatible
set tabstop=4    " Tab size
set sw=4         " Shift width
set showmatch    " Show curly/parenthesis matches
set nohls        " Do not highlight seaches, incremental does it already
set incsearch    " Incremental search
set scrolloff=3
set mouse=a      " Extended mouse support
set number       " Line numbers
set autoindent   " Auto indentation
set smartindent  " Please god let this not get in my way
set list
set listchars=tab:» ,trail:-,extends:>,precedes:<

" Set default color scheme
colorscheme zephyr

" Make it easier to edit/source vimrc
nmap <leader>s :source $MYVIMRC
nmap <leader>v :e $MYVIMRC

" Tabs (the wanna-be buffers, not the character)
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>

" Backup/swap settings
set nobackup
set nowritebackup
set directory=$HOME/.vimswap

" PHP Syntax plugin settings
let php_sql_query=1
let php_htmlInStrings=1
let g:php_noShortTags = 1
"let g:php_smart_members = 1
"let g:php_alt_properties = 1
"let g:php_show_semicolon = 1
"let g:php_smart_semicolon = 1
"let g:php_folding = 0

" Change diff settings
set diffopt+=iwhite
set nowrap
if &diff
	set wrap
endif

" Syntastic plugin
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
nmap <f5> :ToggleErrors<cr>
set statusline=%F%m%r%h%w\ [ff=%{&ff}]\ %#warningmsg#%*\ %=%#Error#%{SyntasticStatuslineFlag()}%*\ %{fugitive#statusline()}
set laststatus=2

" Tags
source $VIMRUNTIME/macros/matchit.vim
set tags=tags;/

" Command-T
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
let g:CommandTMatchWindowAtTop = 1

" Tagbar
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

""""""""""""""""""""""""""
" File specific settings "
""""""""""""""""""""""""""
autocmd FileType php set keywordprg=~/bin/php_doc
autocmd FileType perl set expandtab

" Show syntax highlighting groups for word under cursor
nmap <C-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

""""""""""""""""""""""""""""""
" Hackish stuff... fix later "
""""""""""""""""""""""""""""""

" Comment abbreviations
iab firephp require_once'/home/mcreenan/firephp';$fp=FirePHP::getInstance();$fp->log();<ESC>T(i
