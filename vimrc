set nocompatible
set fileencodings=utf-8

set dir=$HOME/.vim/swapfiles//
set vdir=$HOME/.vim/views//

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
colorscheme dark
set hlsearch

set nowrap

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:runtime! ftplugin/man.vim
set notermguicolors
