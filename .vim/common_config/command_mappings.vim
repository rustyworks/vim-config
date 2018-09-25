" make saving less annoying
  :command WQ wq
  :command Wq wq
  :command W w
  :command Q q
  :command QA qa
  :command Qa qa

" Use htmldjango instead html syntax (see 'set syntax' command)
  :command HtmlDjango au BufNewFile,BufRead *.html set filetype=htmldjango

" Stop mouse support
  :command StopMouse au BufEnter * set mouse=
