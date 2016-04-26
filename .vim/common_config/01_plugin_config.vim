" Plugins are managed by NeoBundle. Once VIM is open run :NeoBundleInstall to
" install plugins.
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins requiring no additional configuration or keymaps
  NeoBundle "https://github.com/michaeljsmith/vim-indent-object.git"
  NeoBundle "https://github.com/oscarh/vimerl.git"
  NeoBundle "https://github.com/pangloss/vim-javascript.git"
  NeoBundle "https://github.com/tomtom/tcomment_vim.git"
  NeoBundle "https://github.com/tpope/vim-endwise.git"
  NeoBundle "https://github.com/tpope/vim-fugitive.git"
  NeoBundle "https://github.com/tpope/vim-haml.git"
  NeoBundle "https://github.com/tpope/vim-rake.git"
  NeoBundle "https://github.com/tpope/vim-repeat.git"
  NeoBundle "https://github.com/vim-ruby/vim-ruby.git"
  NeoBundle "https://github.com/vim-scripts/L9.git"
  NeoBundle "https://github.com/vim-scripts/matchit.zip"
  NeoBundle "https://github.com/vim-scripts/ruby-matchit.git"
  NeoBundle "https://github.com/tpope/vim-abolish.git"

 " Vim airline configs
  NeoBundle 'https://github.com/vim-airline/vim-airline.git'
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
  NeoBundle "https://github.com/Lokaltog/vim-easymotion.git"

"Supertab code completion"
  NeoBundle "https://github.com/ervandew/supertab.git"
  let g:SuperTabContextDefaultCompletionType = "<c-n>"


" Dash Searching"
  NeoBundle "https://github.com/rizzatti/funcoo.vim.git"
  NeoBundle "https://github.com/rizzatti/dash.vim.git"
    nmap <Leader>qs <Plug>DashSearch
    nmap <Leader>qa <Plug>DashGlobalSearch


" CtrlP
  NeoBundle "https://github.com/kien/ctrlp.vim.git"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    " nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>

    " respect the .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" FZF
  NeoBundle "https://github.com/junegunn/fzf.vim.git"
  nnoremap <Leader>t :<C-U>FZF<CR>

" Go
  NeoBundle "https://github.com/jnwhiteh/vim-golang.git"
    au BufNewFile,BufRead *.go set filetype=go

" Slim
  NeoBundle "https://github.com/slim-template/vim-slim.git"
    au BufNewFile,BufRead *.slim set filetype=slim

" Less
  NeoBundle "https://github.com/groenewege/vim-less.git"
    au BufNewFile,BufRead *.less set filetype=less

" Handlebars, Mustache, and Friends
  NeoBundle "https://github.com/mustache/vim-mustache-handlebars.git"
  au  BufNewFile,BufRead *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim

" Stylus
  NeoBundle "https://github.com/wavded/vim-stylus.git"
    au BufNewFile,BufRead *.styl set filetype=stylus

" Coffee script
  NeoBundle "https://github.com/kchmck/vim-coffee-script.git"
    au BufNewFile,BufRead *.coffee set filetype=coffee

" AG aka The Silver Searcher
  NeoBundle 'https://github.com/rking/ag.vim.git'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>


" Tagbar for navigation by tags using CTags
  NeoBundle "https://github.com/majutsushi/tagbar.git"
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>

" Markdown syntax highlighting
  NeoBundle "https://github.com/tpope/vim-markdown.git"
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END

" NERDTree for project drawer
  NeoBundle "https://github.com/scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>


" Tabular for aligning text
  NeoBundle "https://github.com/godlygeek/tabular.git"
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
  NeoBundle "https://github.com/vim-scripts/ZoomWin.git"
    map <Leader>z :ZoomWin<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
  NeoBundle "https://github.com/tpope/vim-unimpaired.git"
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv


" Syntastic for catching syntax errors on save
  NeoBundle "https://github.com/scrooloose/syntastic.git"
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warning'}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }


" gundo for awesome undo tree visualization
  NeoBundle "https://github.com/sjl/gundo.vim.git"
    map <Leader>h :GundoToggle<CR>


" rails.vim, nuff' said
  NeoBundle "https://github.com/tpope/vim-rails.git"
    map <Leader>oc :Econtroller<Space>
    map <Leader>ov :Eview<Space>
    map <Leader>om :Emodel<Space>
    map <Leader>oh :Ehelper<Space>
    map <Leader>oj :Ejavascript<Space>
    map <Leader>os :Estylesheet<Space>
    map <Leader>oi :Eintegration<Space>


" surround for adding surround 'physics'
  NeoBundle "https://github.com/tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"


" Clojure Highlighting"
  NeoBundle "https://github.com/tpope/vim-fireplace.git"
  NeoBundle "https://github.com/tpope/vim-classpath.git"
  NeoBundle "https://github.com/guns/vim-clojure-static.git"
  NeoBundle "https://github.com/vim-scripts/paredit.vim"
  NeoBundle "https://github.com/losingkeys/vim-niji.git"
  autocmd BufNewFile,BufRead *.clj set filetype=clojure
  autocmd BufNewFile,BufRead *.edn set filetype=clojure
  autocmd BufNewFile,BufRead *.cljs set filetype=clojure
  autocmd BufNewFile,BufRead *.cljx set filetype=clojure

  let g:paredit_leader= '\'
  let vimclojure#ParenRainbow  = 1

" Jade Highlighting"
  NeoBundle "https://github.com/digitaltoad/vim-jade.git"
  autocmd BufNewFile,BufRead *.jade set filetype=jade

" Scala Highlighting"
  NeoBundle "https://github.com/derekwyatt/vim-scala.git"
  autocmd BufNewFile,BufRead *.scala set filetype=scala

" Elixir plugin
  NeoBundle "https://github.com/elixir-lang/vim-elixir.git"
    au BufNewFile,BufRead *.ex set filetype=elixir
    au BufNewFile,BufRead *.exs set filetype=elixir

" Rust!
  NeoBundle 'https://github.com/wting/rust.vim.git'

" Easy async RSpec running
  NeoBundle 'thoughtbot/vim-rspec'
  NeoBundle "https://github.com/tpope/vim-dispatch.git"
  let g:rspec_command = "Dispatch rspec --format=progress --no-profile {spec}"
  nmap <Leader>rc :wa<CR> :call RunCurrentSpecFile()<CR>
  nmap <Leader>rn :wa<CR> :call RunNearestSpec()<CR>
  nmap <Leader>rl :wa<CR> :call RunLastSpec()<CR>
  nmap <Leader>ra :wa<CR> :call RunAllSpecs()<CR>

 call neobundle#end()
