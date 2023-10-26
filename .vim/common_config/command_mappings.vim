" Use htmldjango instead html syntax (see 'set syntax' command)
  :command HtmlDjango au BufNewFile,BufRead *.html set filetype=htmldjango
" This for jsx file type (the jsx plugin not very good)
  :command JavascriptX au BufNewFile,BufRead *.jsx set filetype=javascript

" Stop mouse support
  :command DisableMouse au BufEnter * set mouse=
