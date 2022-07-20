" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()


" Running selected python code
function! s:GetVisualSelection()
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][:col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

autocmd FileType python noremap <Leader>R :<C-U>exec '!python -c' shellescape(<SID>GetVisualSelection(), 1)<CR>


" Go to django related file
fun! RelatedFile(file)
    "This is to check that the directory looks djangoish
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun


function! <SID>SwapBackground()
  if (&background ==# "light")
    set background=dark
    colorscheme dracula
  else
    set t_Co=256
    set background=light
    colorscheme PaperColor
  endif
endfunction
command! SwapBackground call <SID>SwapBackground()


fun SetAppDir()
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
endfun
autocmd BufEnter *.py call SetAppDir()


function! <SID>CopyCurrentFilePath()
  let @+=@%
endfunction
command! CopyCurrentFilePath call <SID>CopyCurrentFilePath()


function! <SID>AlwaysMiddleEnable()
  "keep cursor in the middle all the time :)
    nnoremap k kzz
    nnoremap j jzz
    nnoremap p pzz
    nnoremap P Pzz
    nnoremap G Gzz
    nnoremap x xzz
    inoremap <ESC> <ESC>zz
    nnoremap <ENTER> <ENTER>zz
    inoremap <ENTER> <ENTER><ESC>zzi
    nnoremap o o<ESC>zza
    nnoremap O O<ESC>zza
    nnoremap a a<ESC>zza
endfunction
command! AlwaysMiddleEnable call <SID>AlwaysMiddleEnable()

function! <SID>DisableAlwaysMiddle()
  "keep cursor in the middle all the time :)
    nnoremap k k
    nnoremap j j
    nnoremap p p
    nnoremap P P
    nnoremap G G
    nnoremap x x
    inoremap <ESC> <ESC>
    nnoremap <ENTER> <ENTER>
    inoremap <ENTER> <ENTER>
    nnoremap o o
    nnoremap O O
    nnoremap a a
endfunction
command! AlwaysMiddleDisable call <SID>AlwaysMiddleDisable()

function! <SID>ToggleFoldByIndent()
  if (&foldmethod ==# "manual")
    set foldmethod=indent
    set foldnestmax=2
    set foldlevel=1
  elseif (&foldmethod ==# "indent")
    set foldmethod=manual
    set foldnestmax=20
    call feedkeys("zR<cr>")
  end
endfunction
command! ToggleFoldByIndent call <SID>ToggleFoldByIndent()

function! <SID>BadApple()
  exec 'edit ~/.vim/bundle/bad-apple/plugin/badapple.vim'
  set autochdir
  exec 'source ~/.vim/bundle/bad-apple/plugin/badapple.vim'
endfunction
command! BadApple call <SID>BadApple()
