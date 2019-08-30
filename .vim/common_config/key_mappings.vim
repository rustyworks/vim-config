" easy wrap toggling
  nmap <Leader>w :set wrap!<cr>
  nmap <Leader>W :set nowrap<cr>

" close all other windows (in the current tab)
  nmap gW :only<cr>

" go to the alternate file (previous buffer) with g-enter
  nmap g 

" shortcuts for frequenly used files
" Rails
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>
  " nmap gm :e Gemfile<cr> "Colided with django, let me thing what should I do
" Django
  nmap gm :call RelatedFile ("models.py")<cr>
  nmap gv :call RelatedFile ("views.py")<cr>
  nmap gu :call RelatedFile ("urls.py")<cr>
  nmap ga :call RelatedFile ("admin.py")<cr>
  " nmap gt :call RelatedFile ("tests.py")<cr> " Conflict with change tab
  " shortcut
  nmap gs :find settings.py<cr>

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" mapping change tab using leader for easier navigation
  noremap <Leader>1 1gt
  noremap <Leader>2 2gt
  noremap <Leader>3 3gt
  noremap <Leader>4 4gt
  noremap <Leader>5 5gt
  noremap <Leader>6 6gt
  noremap <Leader>7 7gt
  noremap <Leader>8 8gt
  noremap <Leader>9 9gt
  noremap <Leader>0 :tablast<cr>

" mapping previous file instead previous cursor goto
  " nmap <C-O> <C-^>

" Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" select the lines which were just pasted
  nnoremap vv `[V`]

" clean up trailing whitespace
  map <Leader>c :StripTrailingWhitespaces<cr>

" compress excess whitespace on current line
  map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" delete all buffers
  map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
  nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>+
  nnoremap <S-Down> <c-w>-
  nnoremap <S-Left> <c-w><
  nnoremap <S-Right> <c-w>>

" reindent the entire file
  map <Leader>I gg=G``<cr>

" insert the path of currently edited file into a command
" Command mode: Ctrl-P
  cmap <C-S-P> <C-R>=expand("%:p:h") . "/" <cr>

" make `jj` and `jk` throw you into normal mode
  inoremap jj <esc>
  inoremap jk <esc>

" disable left-click to prevent accidentally click when using touchpad
  map <LeftMouse> <Nop>

" change directory to current openfile
  nnoremap <leader>cd :cd %:p:h<CR>
