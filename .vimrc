set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/dracula
set rtp+=/usr/local/opt/fzf

" This userful if you use 'find' command
set path+=**

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

let g:dracula_italic = 0
colorscheme dracula
" colorscheme yin
" colorscheme gruvbox
" set background=light

" This config is for nvim only
if has('nvim')
  " let base16colorspace=256
  set clipboard+=unnamedplus
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

" ensure the file is reloading the latest file in vim
au FocusGained,BufEnter * :checktime
