set relativenumber
set number
syntax enable
set showmatch
set showcmd
set nocompatible
execute pathogen#infect()
colorscheme elflord
highlight LineNr ctermfg=red
set clipboard=unnamedplus
set runtimepath^=~/.vim/bundle/ctrlp.vim
inoremap jk <ESC>
inoremap kj <ESC>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <right> <nop>
imap <left> <nop>
imap <up> <nop>
imap <down> <nop>
set laststatus=2
let mapeleader=','
noremap <leader>k :CtrlP /home/miguel/
