set rtp+=~/.vim/bundle/Vundle.vim/

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

if has('termguicolors')
  set termguicolors
endif

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

if has('clipboard')
  set clipboard=unnamedplus
endif

colorscheme ff8
