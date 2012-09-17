" Make sure syntax highlighting is enabled.. OR ELSE
syntax on

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

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

set shortmess=atI
set backspace=2
set textwidth=0
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

" Don't clobber unnamed register when pasting in visual mode
vnoremap p pgvy

" Clean up quickfix window
au Filetype qf setl nolist
au Filetype qf setl nocursorline
au Filetype qf setl nowrap

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
let php_sql_query=0
let php_htmlInStrings=0
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
set stl=%r%y\ %F\ %m\ (ff=%{&ff})\ %#warningmsg#%*\ %=\ %#Error#%{SyntasticStatuslineFlag()}%*\ %{fugitive#statusline()}
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
autocmd FileType php noremap \L gUiwdiwi$this->L('<ESC>pa')<ESC>
autocmd FileType php setlocal keywordprg=~/bin/php_doc
autocmd FileType perl setlocal noexpandtab
autocmd FileType perl setlocal textwidth=120
autocmd FileType perl setlocal colorcolumn=+1
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal sw=2
autocmd FileType yaml setlocal ts=2
autocmd FileType php setlocal keywordprg=~/bin/php_doc
autocmd FileType tt2html,smarty setlocal sw=2
autocmd FileType tt2html,smarty setlocal tabstop=2
autocmd FileType css setlocal textwidth=0
autocmd FileType perl setlocal sw=4
autocmd FileType perl setlocal expandtab
autocmd FileType perl setlocal textwidth=80
autocmd FileType perl setlocal colorcolumn=+1

" Register new file types
autocmd BufRead,BufNewfile *.tt set filetype=tt2html

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
