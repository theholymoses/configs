set nocompatible
set fileencodings=utf-8

set vdir=$HOME/.vim/views
set tags=$HOME/.vim/tags
set notagrelative
cs add $HOME/cscope.out

set nobackup
set noswapfile

set wildmenu
set number
set nowrapscan
set showcmd

set noautoindent
set expandtab
set shiftwidth=4
set tabstop=4

set matchpairs+=<:>

set cursorline

syntax off
colorscheme cmbw
set hlsearch

set nowrap

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:runtime! ftplugin/man.vim
set notermguicolors
