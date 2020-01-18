" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.
 call vundle#rc()

" Plugins requiring no additional configuration or keymaps
  Bundle "michaeljsmith/vim-indent-object.git"
  Bundle "oscarh/vimerl.git"
  Bundle "pangloss/vim-javascript.git"
  Bundle "tomtom/tcomment_vim.git"
  Bundle "tpope/vim-endwise.git"
  Bundle "tpope/vim-fugitive.git"
  Bundle "tpope/vim-haml.git"
  Bundle "tpope/vim-rake.git"
  Bundle "tpope/vim-repeat.git"
  Bundle "vim-ruby/vim-ruby.git"
  Bundle "leafgarland/typescript-vim"
  Bundle "peitalin/vim-jsx-typescript"
  Bundle "vim-scripts/L9.git"
  Bundle "vim-scripts/matchit.zip"
  Bundle "rustyworks/ruby-matchit.git"
  Bundle "tpope/vim-abolish.git"
  Bundle "terryma/vim-multiple-cursors"
  Bundle "dracula/vim", { "name": "dracula" }
  " Bundle "Valloric/YouCompleteMe"

 " Vim airline configs
  Bundle 'vim-airline/vim-airline.git'
  let g:airline_powerline_fonts = 1
  let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

" Easy motion config
  Bundle "Lokaltog/vim-easymotion.git"

"Supertab code completion"
  Bundle "ervandew/supertab.git"
  let g:SuperTabContextDefaultCompletionType = "<c-n>"


" Dash Searching"
  Bundle "rizzatti/funcoo.vim.git"
  Bundle "rizzatti/dash.vim.git"
    nmap <Leader>qs <Plug>DashSearch
    nmap <Leader>qa <Plug>DashGlobalSearch


" CtrlP
  Bundle "ctrlpvim/ctrlp.vim"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    " nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>

    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 0
    if executable("ag")
      let g:ctrlp_use_caching = 0
      let g:ctrlp_user_command = 'ag %s -l -i --nocolor --nogroup -g ""'
    else
      " respect the .gitignore
      let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    endif

" FZF
  Bundle "junegunn/fzf.vim.git"
  " use fzf if FZF present, else CtrlP
    if executable("fzf")
      nnoremap <Leader>t :<C-U>FZF<CR>
    else
      nnoremap <Leader>t :<C-U>CtrlP<CR>
    endif

" Slim
  Bundle "slim-template/vim-slim.git"
    au BufNewFile,BufRead *.slim set filetype=slim

" Less
  Bundle "groenewege/vim-less.git"
    au BufNewFile,BufRead *.less set filetype=less

" Handlebars, Mustache, and Friends
  Bundle "mustache/vim-mustache-handlebars.git"
  au  BufNewFile,BufRead *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim

" Stylus
  Bundle "wavded/vim-stylus.git"
    au BufNewFile,BufRead *.styl set filetype=stylus

" Coffee script
  Bundle "kchmck/vim-coffee-script.git"
    au BufNewFile,BufRead *.coffee set filetype=coffee

" AG aka The Silver Searcher
  Bundle 'rking/ag.vim.git'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>


" Tagbar for navigation by tags using CTags
  Bundle "majutsushi/tagbar.git"
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>

" Markdown syntax highlighting
  Bundle "tpope/vim-markdown.git"
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END

" NERDTree for project drawer
  Bundle "scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0
    " Let unused file not shown in NERDTree
    let NERDTreeIgnore = ['\.pyc', '__pycache__']
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>
    nmap <leader>H :NERDTree<CR>


" Tabular for aligning text
  Bundle "godlygeek/tabular.git"
    function! CustomTabularPatterns()
      if exists('g:tabular_loaded')
        AddTabularPattern! symbols         / :/l0
        AddTabularPattern! hash            /^[^>]*\zs=>/
        AddTabularPattern! chunks          / \S\+/l0
        AddTabularPattern! assignment      / = /l0
        AddTabularPattern! comma           /^[^,]*,/l1
        AddTabularPattern! colon           /:\zs /l0
        AddTabularPattern! options_hashes  /:\w\+ =>/
      endif
    endfunction

    autocmd VimEnter * call CustomTabularPatterns()

    " shortcut to align text with Tabular
    map <Leader>a :Tabularize<space>

" ZoomWin to fullscreen a particular buffer without losing others
  Bundle "vim-scripts/ZoomWin.git"
    map <Leader>z :ZoomWin<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
  Bundle "tpope/vim-unimpaired.git"
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv


" Syntastic for catching syntax errors on save
  Bundle "scrooloose/syntastic.git"
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warning'}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }
    " Toggle python 3
    let g:syntastic_python_python_exec='/usr/bin/python3'
    let g:syntastic_python_checkers=['flake8']



" UndoTree
  Bundle "mbbill/undotree.git"
    map <Leader>h :UndotreeToggle<CR>
    if has("persistent_undo")
      set undodir=~/.undodir/
      " set undofile
    endif


" rails.vim, nuff' said
  Bundle "tpope/vim-rails.git"
    map <Leader>oc :Econtroller<Space>
    map <Leader>ov :Eview<Space>
    map <Leader>om :Emodel<Space>
    map <Leader>oh :Ehelper<Space>
    map <Leader>oj :Ejavascript<Space>
    map <Leader>os :Estylesheet<Space>
    map <Leader>oi :Eintegration<Space>


" surround for adding surround 'physics'
  Bundle "tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"


" Clojure Highlighting"
  Bundle "tpope/vim-fireplace.git"
  Bundle "tpope/vim-classpath.git"
  Bundle "guns/vim-clojure-static.git"
  Bundle "vim-scripts/paredit.vim"
  Bundle "losingkeys/vim-niji.git"
  autocmd BufNewFile,BufRead *.clj set filetype=clojure
  autocmd BufNewFile,BufRead *.edn set filetype=clojure
  autocmd BufNewFile,BufRead *.cljs set filetype=clojure
  autocmd BufNewFile,BufRead *.cljx set filetype=clojure

  let g:paredit_leader= '\'
  let vimclojure#ParenRainbow  = 1

" Jade Highlighting"
  Bundle "digitaltoad/vim-jade.git"
  autocmd BufNewFile,BufRead *.jade set filetype=jade

" Scala Highlighting"
  Bundle "derekwyatt/vim-scala.git"
  autocmd BufNewFile,BufRead *.scala set filetype=scala

" Elixir plugin
  Bundle "elixir-lang/vim-elixir.git"
    au BufNewFile,BufRead *.ex set filetype=elixir
    au BufNewFile,BufRead *.exs set filetype=elixir

" Rust!
  Bundle 'wting/rust.vim.git'

" Python Highlighting"
  Bundle "vim-python/python-syntax"
  " Conflict with semshi, need to be 0
  let g:python_highlight_all = 1

" Easy async RSpec running
  Bundle 'thoughtbot/vim-rspec'
  Bundle "tpope/vim-dispatch.git"
  let g:rspec_command = "Dispatch rspec --format=progress --no-profile {spec}"
  nmap <Leader>rc :wa<CR> :call RunCurrentSpecFile()<CR>
  nmap <Leader>rn :wa<CR> :call RunNearestSpec()<CR>
  nmap <Leader>rl :wa<CR> :call RunLastSpec()<CR>
  nmap <Leader>ra :wa<CR> :call RunAllSpecs()<CR>
