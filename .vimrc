set nocompatible              " be iMproved, required
filetype off                  " required

call pathogen#infect()

" general options
set autoindent
set ignorecase
set number
autocmd FileType text setlocal textwidth=76
autocmd FileType tex setlocal textwidth=76
set backspace=1
set autoindent
set smartindent
set hlsearch
set nohls
set smartcase
set shellpipe=2\>\&1\|ccfilter\>
set errorformat=%f:%l:%c:%t:%m
set incsearch
set wildmode=longest,full
map #r Oi....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8j^
set expandtab
set shiftwidth=4 "voip cp
set shiftwidth=4 " voip cp
set tabstop=4 " voip cp
set softtabstop=4
"set noexpandtab " voip cp
set showmode
set showcmd
set ruler
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" set syntax highlighting options.
let c_space_errors = 1
let php_sql_query = 1
let php_htmlInStrings = 1
let php_sync_method = 0
filetype plugin indent on

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

syntax enable
set background=dark

map <Tab><Left> :tabp<cr>
map <Tab><Right> :tabn<cr>
map <Tab><Down> <C-f> 
map <Tab><Up> <C-b>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
:autocmd FileType javascript noremap <C-L> :!jshint %<CR>

au BufRead,BufNewFile *.view setfiletype php

ca w!! w !sudo tee > /dev/null "%" 

let g:ctrlp_max_files = 20000

au BufRead,BufNewFile *.html.twig setfiletype htmljinja

set autoread
set colorcolumn=120

command Phpcs !phpcs --standard=phpcs-ruleset.xml %

set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic
hi jsBooleanFalse ctermfg=28 guifg=#008700 
hi jsBooleanTrue ctermfg=28 guifg=#008700 
hi jsStorageClass ctermfg=197 guifg=#ff005f cterm=italic gui=italic
hi jsString ctermfg=129 guifg=#af00ff 
hi jsObjectKey ctermfg=214 guifg=#ffaf00
hi jsReturn ctermfg=207 guifg=#ff5fff cterm=italic gui=italic
hi twigVariable ctermfg=207 guifg=#ff5fff
hi Cursor guifg=white guibg=black
hi iCursor guifg=white guibg=steelblue

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

execute pathogen#infect()
