" ----------------------------------------------------------------------------
" Initial stuff
" ----------------------------------------------------------------------------
set nocompatible
"filetype off
set encoding=utf-8

:set nu
" make them relative
"set relativenumber
" allow per project vimrc
set exrc
set secure

set colorcolumn=80
"let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=7 guibg=#2c2d27
"#2c2d27
"let &colorcolumn="80,".join(range(120,999),",")
set nowrap
set background=dark
set autoindent
" do smart indenting when starting a new line
set smartindent

" ----------------------------------------------------------------------------
" Spaces
" ----------------------------------------------------------------------------
" for php files 4 spaces
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
" for xml files 4 spaces
autocmd Filetype xml setlocal ts=4 sw=4 sts=0 expandtab
" for yml files 2 spaces
autocmd FileType yml setlocal shiftwidth=2 tabstop=2

" ----------------------------------------------------------------------------
" netrw
" ----------------------------------------------------------------------------
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
