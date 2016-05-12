set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=~/.fzf

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

colorscheme monokai

" This config is for nvim only
if has('nvim')
  " let base16colorspace=256
  set clipboard+=unnamedplus
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  colorscheme base16-eighties
  set background=dark
endif

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

