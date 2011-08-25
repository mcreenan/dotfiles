call pathogen#infect()

"
let mapleader=","
nmap <leader>s :source $MYVIMRC
nmap <leader>v :e $MYVIMRC

" Tabs
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
map <C-tab> :tabnext<CR>
imap <C-S-tab> <Esc>:tabprevious<CR>i
imap <C-tab> <Esc>:tabnext<CR>i
nmap <C-t> :tabnew <CR>
imap <C-t> <Esc>:tabnew <CR>i

" Meh, backup stuff
set nobackup
set nowritebackup
set directory=$HOME/.vimswap

" Code folding
autocmd FileType php setlocal foldmethod=syntax" OmniCompletefiletype plugin on
let php_sql_query=1
let php_htmlInStrings=1
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Diff stuff
set diffopt+=iwhite
set nowrap
if &diff
	set wrap
endif

" Syntastic plugin
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
nmap <f5> :Errors<cr>
set statusline=%F%m%r%h%w\ [ff=%{&ff}]\ %#warningmsg#\ %{SyntasticStatuslineFlag()}\ %*
set laststatus=2

" disable arrow keys :(
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

set encoding=utf8

" Other
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
"set cindent
set smartindent  " Please god let this not get in my way
"set smarttab     " This too..

autocmd FileType perl set expandtab

" php stuff
let g:php_noShortTags = 1
"let g:php_smart_members = 1
"let g:php_alt_properties = 1
"let g:php_show_semicolon = 1
"let g:php_smart_semicolon = 1
"let g:php_folding = 0
" Enable later?
" PHP Beautifier
map ,pb <ESC>:%! php_beautifier --filters "Pear ArrayNested EqualsAlign"<CR>

" Comment abbreviations
iab firephp require_once'/home/mcreenan/firephp';$fp=FirePHP::getInstance();$fp->log();<ESC>T(i

source $VIMRUNTIME/macros/matchit.vim
set tags=tags;/
autocmd FileType javascript noremap <C-C> :!cs %<CR>
autocmd FileType php set keywordprg=~/bin/php_doc
autocmd FileType php noremap <C-C> :!cs -z %<CR>
autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>
set list
set listchars=tab:» ,trail:-,extends:>,precedes:<

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Colors!
colorscheme zephyr
