set nocompatible " be iMproved
filetype indent plugin off

syntax on

" protect vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'Syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'lunaru/vim-less'
Bundle 'tomasr/molokai'

call vundle#end()
filetype indent plugin on
" protect vundle

" colors gcolor " my color scheme ~/.vim/colors/
set background=dark
colorscheme molokai
set encoding=utf-8
set t_Co=256
set noerrorbells " silent
set undolevels=50
set t_vb=
set lazyredraw
set binary
set noeol
set title

set wildmenu
set wildignore=*.o,*~,*.pyc

" SPELLCHECK
if (v:version >= 700)
    set spelllang=en
    autocmd FileType tex set spell " tex
    autocmd BufNewFile,BufRead *.txt set spell " txt
endif

" SEARCH
set ignorecase
set hlsearch
set incsearch

" HEADSUP DISPLAY
set number
set ruler
set cursorline " highlight current line
set colorcolumn=80

" WHITESPACE
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" set cinoptions=>2s

" Highlight tabs and trailing whitespace
highlight Alert ctermbg=red guibg=red
match Alert /\s\+$\|\t/

" AUTOCOMPLETE MENU
set wildmenu
set wildignore=*.o,*.pyc,*.bak,*.jpg,*.jpeg,*.png,*.gif,*.class
set wildmode=list:full

" CODE FOLDING
set foldmethod=syntax
set foldnestmax=10
set nofoldenable

" RESIZE SPLITS UNIFORMLY
au VimResized * exe "normal! \<c-w>="

" BACKUP FILES
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" FILETYPES
autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.c set cindent
autocmd BufNewFile,BufRead *.cc set cindent
autocmd BufNewFile,BufRead *.cxx set cindent
autocmd BufNewFile,BufRead *.h set cindent
au BufRead,BufNewFile *.go set filetype=go

" TAGLIST PLUGIN
" let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" let Tlist_Exit_OnlyWindow = 1
" let Tlist_GainFocus_On_ToggleOpen = 1

" CTRLP
let g:ctrlp_map = '<Leader>]'
set wildignore+=*/tmp/*,*.swp,*.zip
let g:ctrlp_custom_ignore = 'tmp$\|out$\|node_modules$\|\v[\/]\.(git|hg|svn)$'

" KEY MAPS
map j gj
map k gk
imap jj <Esc>


" FILETYPE SETTINGS
autocmd BufNewFile,BufRead *.less setfiletype less
autocmd Filetype js,css,less,html,sh setlocal ts=2 sts=2 sw=2 et
