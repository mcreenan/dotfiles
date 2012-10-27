augroup filetypedetect
	au! BufRead,BufNewFile *.tt setfiletype html
augroup END

" Twig
autocmd BufNewFile,BufRead *.twig setlocal filetype=twig
autocmd BufNewFile,BufRead *.twig setlocal sw=2 ts=2

" HTML Twig
autocmd BufNewFile,BufRead *.html.twig setlocal filetype=html.twig
autocmd BufNewFile,BufRead *.html.twig setlocal sw=2 ts=2

