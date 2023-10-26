" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.
 call vundle#rc()

" Plugins requiring no additional configuration or keymaps
  Bundle "jiangmiao/auto-pairs"
  Bundle "terryma/vim-multiple-cursors"
  Bundle "tomtom/tcomment_vim.git"
  Bundle "tpope/vim-fugitive.git"

"Supertab code completion"
  Bundle "ervandew/supertab.git"
  let g:SuperTabContextDefaultCompletionType = "<c-n>"

" CtrlP
  Bundle "ctrlpvim/ctrlp.vim"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 0
    if executable("ag")
      let g:ctrlp_use_caching = 0
      let g:ctrlp_user_command = 'ag %s -l -i --nocolor --nogroup -g ""'
    else
      " respect the .gitignore
      let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    endif

" AG aka The Silver Searcher
  Bundle 'rking/ag.vim.git'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>

" NERDTree for project drawer
  Bundle "scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0
    " Let unused file not shown in NERDTree
    let NERDTreeIgnore = [
          \ '\.pyc$', '__pycache__$',
          \ '\.git$', 
          \ '\.idea$', '\.vscode$', 
          \ ]
    let NERDTreeShowHidden=1
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>
    nmap <leader>H :NERDTree<CR>

" UndoTree
  Bundle "mbbill/undotree.git"
    map <Leader>h :UndotreeToggle<CR>
    if has("persistent_undo")
      set undodir=~/.undodir/
      " set undofile
    endif
