colors gcolor " my color scheme ~/.vim/colors/
set noerrorbells " silent

" encoding
set fenc=utf-8 " default utf-8 encoding for existing files
setglobal fenc=utf-8 " default utf8 encoding for new files

" spellcheck
set spelllang=en " language
autocmd FileType tex setlocal spell " tex files
autocmd BufNewFile,BufRead *.txt setlocal spell " txt files

" search
set ic " ignore case in search
set is " incremental search

" heads up display
set cul " highlight current line
set cc=80 " color column 80
set ru " display line and column numbers

" whitespace
set ai si " autoindent and smartindent
set ts=4 sw=4 et " tabstop 4 spaces
match Alert /\s\+$\|\t/

" backup
set backup " must mkdir manually
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

autocmd FileType make setlocal noet " preserve tabs in Makefile
syntax on
