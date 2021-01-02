set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=~/.fzf

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

if has('termguicolors')
  set termguicolors
endif

" This config is for nvim only
if has('nvim')
  " Set clipboard to system clipboard
  set clipboard+=unnamedplus
  " Add change cursor shape when normal, insert, replace, and pending
  " Also disable the blinking.
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        " \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        " \,sm:block-blinkwait175-blinkoff150-blinkon175
endif

" Colorscheme
colorscheme dracula
