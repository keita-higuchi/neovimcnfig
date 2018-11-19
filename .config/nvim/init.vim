if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

set nu
set expandtab
set tabstop=4
set shiftwidth=4
set noswapfile
set smartcase
set ignorecase
set clipboard+=unnamedplus
set diffopt+=vertical


colorscheme pencil

let g:python3_host_prog = expand('/usr/bin/python3')

call dein#call_hook('source')
call dein#call_hook('post_source')
