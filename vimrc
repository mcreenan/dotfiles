" Make sure syntax highlighting is enabled.. OR ELSE
syntax on

set term=xterm-256color
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Enable pathogen bundles (see bundles/ directory)
call pathogen#infect()

" iTerm2 Cursor Shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Leader!
let mapleader = ','
nmap <leader>q :q<cr>

" Auto reload vimrc when saved
autocmd bufwritepost vimrc source ~/.vimrc

set clipboard=unnamed
" Better pasting behavior
set nopaste
set clipboard=unnamed
set pastetoggle=<f12>

set colorcolumn=120
set shortmess=atI
set backspace=2
set textwidth=0
set encoding=utf-8
set t_Co=256
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

" Format JSON
com! FormatJSON %!python -m json.tool

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
let php_html_in_strings=0
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
nmap <leader><leader> :ToggleErrors<cr>

" Status Line
"set stl=%r%y\ %F\ %m\ (ff=%{&ff})\ %#warningmsg#%*\ %=\ %#Error#%{SyntasticStatuslineFlag()}%*\ %{fugitive#statusline()}
set laststatus=2
"set rtp+=/Users/mcreenan/dotfiles/powerline/bindings/vim
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = "fancy"
set fillchars+=stl:\ ,stlnc:\

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

" Switch
nnoremap - :Switch<CR>

""""""""""""""""""""""""""
" File specific settings "
""""""""""""""""""""""""""
autocmd FileType php noremap \L gUiwdiwi$this->L('<ESC>pa')<ESC>
autocmd FileType php vnoremap <C-a> :Align =><CR>
autocmd FileType php setlocal keywordprg=~/bin/php_doc
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal sw=2
autocmd FileType yaml setlocal ts=2
autocmd FileType php setlocal keywordprg=~/bin/php_doc
autocmd FileType tt2html,smarty,yaml setlocal sw=2
autocmd FileType tt2html,smarty,yaml setlocal tabstop=2
autocmd FileType css setlocal textwidth=0
autocmd FileType perl setlocal sw=4
autocmd FileType perl setlocal noexpandtab
autocmd FileType perl setlocal textwidth=120 colorcolumn=120
autocmd FileType perl6 setlocal sw=4
autocmd FileType perl6 setlocal softtabstop=4
autocmd FileType perl6 setlocal expandtab
autocmd FileType perl6 setlocal textwidth=120 colorcolumn=120
autocmd FileType perl6 setlocal foldmethod=indent
autocmd FileType perl6 setlocal foldlevel=99
autocmd FileType perl6 setlocal autoindent
autocmd FileType perl6 setlocal nosmartindent

autocmd FileType javascript setlocal textwidth=120 colorcolumn=120
autocmd FileType javascript setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType javascript setlocal autoindent

autocmd FileType html setlocal textwidth=120 colorcolumn=120
autocmd FileType html setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType html setlocal autoindent

autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal colorcolumn=120
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python setlocal foldlevel=99
autocmd FileType python setlocal autoindent
autocmd FileType python setlocal nosmartindent

" Register new file types
autocmd BufRead,BufNewfile *.tt set filetype=tt2html
autocmd BufRead,BufNewfile *.j2 set filetype=jinja
autocmd BufRead,BufNewfile *.p6 set filetype=perl6
autocmd BufRead,BufNewfile *.raku set filetype=perl6
autocmd BufRead,BufNewfile *.pl6 set filetype=perl6
autocmd BufRead,BufNewfile *.pm6 set filetype=perl6

autocmd FileType jinja setlocal shiftwidth=4 tabstop=4 expandtab

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
iab flog require_once'/home/mcreenan/firelogger.php';flog();<ESC>T(i
iab fdebug $fh=fopen('/home/mcreenan/debug','a');fwrite($fh, var_export(, true));fclose($fh);<ESC>T,hi
iab <!-- <!-- --><ESC>T hi

" Perl 6 stuff
let g:syntastic_enable_perl6_checker = 1

" Python
let g:python_highlight_all = 1
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
