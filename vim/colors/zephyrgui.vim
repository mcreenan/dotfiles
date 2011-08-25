" Vim color file
" Original Maintainer: Matt Creenan <mattcreenan@gmail.com>

" Zephyr v1.01
" A modification of the gardener colorscheme v1.1

" 1.01
" - Updated some colors
"
" 1.0
" - Initial release

" Dark scheme, easy on eyes, very distinct colors to make
" code easier to read

set background=dark
hi clear
syntax reset

hi linenr     cterm=BOLD   guifg=#444444   guibg=#262626

" Mode message (Insert, Visual, etc)
hi ModeMsg cterm=BOLD guifg=#080808 guibg=#afff00

" Current Line
set cursorline
au InsertEnter * hi CursorLine guibg=#262626 cterm=NONE
au InsertLeave * hi CursorLine guibg=#080808 cterm=NONE
hi CursorLine guibg=#080808 cterm=NONE

exec "hi Cursor         cterm=BOLD   guifg=#eeeeee   guibg=#d75f5f"
exec "hi CursorIM       cterm=BOLD   guifg=#eeeeee   guibg=#d75f5f"

exec "hi Normal         cterm=NONE   guifg=#eeeeee   guibg=#"
exec "hi NonText        cterm=NONE   guifg=#ffffd7   guibg=#080808"
exec "hi Visual         cterm=NONE   guifg=#eeeeee   guibg=#5f87d7"

exec "hi Linear         cterm=NONE   guifg=#a8a8a8   ctermbg=NONE"

exec "hi Directory      cterm=NONE   guifg=#5f8700    ctermbg=NONE"

exec "hi IncSearch      cterm=NONE   guifg=#eeeeee   guibg=#005faf"

exec "hi ErrorMsg       cterm=BOLD   guifg=#ff0000   ctermbg=NONE"
exec "hi WarningMsg     cterm=BOLD   guifg=#ff0000   ctermbg=NONE"
exec "hi MoreMsg        cterm=NONE   guifg=#ffffd7   ctermbg=NONE"
exec "hi Question       cterm=NONE   guifg=#d7ffd7   ctermbg=NONE"

exec "hi StatusLineNC   cterm=NONE   guifg=#000000    guibg=#ffffaf"
exec "hi StatusLine     cterm=BOLD   guifg=#eeeeee   guibg=#d75f5f"
exec "hi VertSplit      cterm=NONE   guifg=#000000    guibg=#ffffaf"

exec "hi Constant       cterm=BOLD   guifg=#eeeeee  ctermbg=NONE"
exec "hi String         cterm=NONE   guifg=#ffffd7  ctermbg=NONE"
exec "hi Character      cterm=BOLD   guifg=#ffffd7  ctermbg=NONE"
exec "hi Number         cterm=BOLD   guifg=#afd7ff  ctermbg=NONE"
exec "hi Boolean        cterm=NONE   guifg=#ff5fff  ctermbg=NONE"
exec "hi Float          cterm=BOLD   guifg=#afd7ff  ctermbg=NONE"

exec "hi Identifier     cterm=NONE   guifg=#ffd7af  ctermbg=NONE"
exec "hi Function       cterm=BOLD   guifg=#ffffaf  ctermbg=NONE"
exec "hi Statement      cterm=BOLD   guifg=#ffffd7  ctermbg=NONE"


exec "hi Repeat         cterm=BOLD   guifg=#ff8700  ctermbg=NONE"
exec "hi Label          cterm=BOLD   guifg=#ffd7ff  ctermbg=NONE"
exec "hi Exception      cterm=BOLD   guifg=#5fffd7   ctermbg=NONE"

exec "hi PreProc        cterm=BOLD   guifg=#ffd787   ctermbg=NONE"
exec "hi Include        cterm=BOLD   guifg=#87d787   ctermbg=NONE"
exec "hi Macro          cterm=BOLD   guifg=#87d787   ctermbg=NONE"
exec "hi PreCondit      cterm=BOLD   guifg=#87d787   ctermbg=NONE"

exec "hi Type           cterm=BOLD   guifg=#d7ffaf   ctermbg=NONE"
exec "hi StorageClass   cterm=BOLD   guifg=#5fd787    ctermbg=NONE"
exec "hi Structure      cterm=BOLD   guifg=#87d787   ctermbg=NONE"
exec "hi Typedef        cterm=BOLD   guifg=#87d787   ctermbg=NONE"

exec "hi Special        cterm=BOLD   guifg=#afd7ff   ctermbg=NONE"
exec "hi SpecialChar    cterm=BOLD   guifg=#afd7ff   ctermbg=NONE"
exec "hi Tag            cterm=BOLD   guifg=#afd7ff   ctermbg=NONE"
exec "hi Delimiter      cterm=BOLD   guifg=#eeeeee   ctermbg=NONE"
exec "hi SpecialComment cterm=BOLD   guifg=#dadada   guibg=#005f87"
exec "hi Debug          cterm=NONE   guifg=#ff8787   ctermbg=NONE"

exec "hi Title          cterm=BOLD   guifg=#eeeeee   guibg=#5f5f87"
exec "hi Ignore         cterm=NONE   guifg=#c6c6c6   ctermbg=NONE"
exec "hi Error          cterm=NONE   guifg=#eeeeee   guibg=#ff0000"
exec "hi Ignore         cterm=NONE   guifg=#ff0000   guibg=#5f5f87"

exec "hi htmlH1         cterm=BOLD   guifg=#eeeeee   ctermbg=NONE"
exec "hi htmlH2         cterm=BOLD   guifg=#dadada   ctermbg=NONE"
exec "hi htmlH3         cterm=BOLD   guifg=#c6c6c6   ctermbg=NONE"
exec "hi htmlH4         cterm=BOLD   guifg=#b2b2b2   ctermbg=NONE"
exec "hi htmlH5         cterm=BOLD   guifg=#9e9e9e   ctermbg=NONE"
exec "hi htmlH6         cterm=BOLD   guifg=#8a8a8a   ctermbg=NONE"

""""""""""""""""""""""""""""""
" Begin zephyr modifications "
""""""""""""""""""""""""""""""

" Check for extra whitespace
hi WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
match WhitespaceEOL /^(\ \+)[^\*]/

" Highlight whitespace at beginning
hi WhitespaceBOL guifg=#121212
match WhitespaceBOL /^\t\+\ */

" Tabs (not the whitespace kind)
if exists("g:zephyr_no_tabs")
else
	hi TabLine     guibg=#444444 guifg=#767676
	hi TabLineFill guibg=#875f00  guifg=#262626
	hi TabLineSel  guibg=#005f87  guifg=#dadada
endif

" Diff
if exists("g:zephyr_no_diff")
else
	hi DiffChange term=reverse cterm=bold guibg=#262626 guifg=#d0d0d0
	hi DiffDelete term=reverse cterm=bold guibg=#080808 guifg=#626262
	hi DiffText   term=reverse cterm=bold guibg=#d75f00 guifg=#d0d0d0
	hi DiffAdd    term=reverse cterm=bold guibg=#005f00  guifg=#d0d0d0
endif

" Whitespace
hi SpecialKey guifg=#121212
hi NonText guifg=#080808

hi Define guifg=#5f87d7  ctermbg=none  cterm=bold
hi Number  guifg=#af0000
hi Boolean guifg=#af0000
hi Float   guifg=#af0000
hi Function guifg=#5fafaf ctermbg=none  cterm=bold
hi Statement guifg=#5f87d7
hi Constant guifg=#870000
hi Comment guifg=#afff00 ctermbg=none
hi SpecialComment guifg=#afff00 ctermbg=none
hi Identifier guifg=#d78700
hi Operator guifg=#ffd75f ctermbg=none
hi Keyword guifg=#ffd75f ctermbg=none
hi String guifg=#626262
hi Conditional guifg=#5f87d7
hi Repeat guifg=#5f87d7
hi Label guifg=#5f87d7
hi Include guifg=#005f87
hi Normal guifg=#c6c6c6
hi Structure guifg=#ffaf00
hi Type guifg=#5faf00
hi SpecialChar guifg=#ffffff
hi Pmenu guibg=#444444 guifg=#ffffff

" HTML/CSS specific
hi htmlstring guifg=#585858
hi htmltagname guifg=#af5f00
hi htmltag guifg=#5f8787
hi htmlendtag guifg=#5f8787
hi htmlarg guifg=#5faf87
hi htmllink guifg=#0087d7 cterm=underline
hi htmlspecialtagname guifg=#ff8700 " Extra highlighting for special tag names, brighter
hi htmlevent guifg=#afffaf
hi cssstyle guibg=#121212
hi csstagname guibg=#121212 guifg=#d75f5f
hi cssselectorop guibg=#121212 guifg=#87af5f
hi cssselectorop2 guibg=#121212 guifg=#87af5f
hi cssattributeselector guibg=#121212
hi cssidentifier guibg=#121212 guifg=#afaf5f
hi cssmedia guibg=#121212
hi cssmediatype guibg=#121212
hi cssmediacomma guibg=#121212
hi cssmediablock guibg=#121212
hi cssvalueinteger guibg=#121212
hi cssvaluenumber guibg=#121212
hi cssvaluelength guibg=#121212
hi cssvalueangle guibg=#121212
hi cssvaluetime guibg=#121212
hi cssvaluefrequency guibg=#121212
hi cssfontdescriptor guibg=#121212
hi cssfontdescriptorblock guibg=#121212
hi csscolor guibg=#121212 guifg=#5f87d7
hi csscomment guibg=#121212 guifg=#afff00
hi cssimportant guibg=#121212
hi csscommonattr guibg=#121212
hi cssfontprop guibg=#121212 guifg=#afafaf
hi cssfontattr guibg=#121212 ctermfg=white
hi csscolorprop guibg=#121212 guifg=#afafaf
hi csscolorattr guibg=#121212 ctermfg=white
hi csstextprop guibg=#121212 guifg=#afafaf
hi csstextattr guibg=#121212 ctermfg=white
hi cssboxprop guibg=#121212 guifg=#afafaf
hi cssboxattr guibg=#121212 ctermfg=white
hi cssuiprop guibg=#121212 guifg=#afafaf
hi cssuiattr guibg=#121212 ctermfg=white
hi cssrenderprop guibg=#121212 guifg=#afafaf
hi cssrenderattr guibg=#121212 ctermfg=white
hi cssgeneratedcontentprop guibg=#121212 guifg=#afafaf
hi cssgeneratedcontentattr guibg=#121212 ctermfg=white
hi csspagingprop guibg=#121212 guifg=#afafaf
hi csspagingattr guibg=#121212 ctermfg=white
hi cssinclude guibg=#121212
hi cssbraces guibg=#121212
hi cssdefinition guibg=#121212
hi csspseudoclass guibg=#121212
hi csspseudoclassid guibg=#121212

" PHP Specific
hi phpRegionDelimiter cterm=bold guifg=#ffff87
hi phpSpecialFunction cterm=bold guifg=#5fd7af

let php_sql_query = 0
let php_htmlInStrings = 0

let g:colors_name = "zephyr"
let colors_name   = "zephyr"
