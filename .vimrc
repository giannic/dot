syntax on " syntax highlighting
set spelllang=en " set spellcheck language
autocmd FileType tex setlocal spell " spell check for tex files
autocmd BufNewFile,BufRead *.txt setlocal spell " spell check for txt files
colors gcolor " color scheme
set ru " display line and column numbers
set noerrorbells " silent
set ts=4 sw=4 et " tabstop 4 spaces
set ai si " autoindent and smartindent
set ic " ignore case in search
set fenc=utf-8 " default utf-8 encoding for existing files
setglobal fenc=utf-8 " default utf8 encoding for new files
set cursorline " highlight current line
hi Alert ctermbg=52 " matches bad white spaces and overlength lines
match Alert /\s\+$\|\t\|\%81v.\+/
hi clear SpellBad " clear red highlighting for misspellings
hi SpellBad cterm=underline " underline misspellings
autocmd FileType make setlocal noet " preserve tabs in Makefile
