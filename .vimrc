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
endif

" Colorscheme
colorscheme dracula
