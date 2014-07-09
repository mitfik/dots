set re=1 " regexp engine slow down html files re=1 use old one which works much faster.
set bg=dark
set nocompatible		" niekompatybilny z VI => włącz bajery VIMa
set autoindent 		" zaczynanie nowej lini od pozycji kursora w popdzedniej lini
set smartindent
set nobackup			" nie trzymaj kopii zapasowych, używaj wersji
set backspace=indent,eol,start
set viminfo='20,\"50		" read/write a .viminfo file, don't store more than 50 lines of registers
set history=50			" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch			" do incremental searching
set browsedir=buffer		" To get the File / Open dialog box to default to the current file's directory
set pastetoggle=<F11>		" przełączanie w tryb wklejania (nie będzie automatycznych wcięć, ...)
set number			" wyświetlaj nr linii
set wildmenu			" wyświetlaj linie z menu podczas dopełniania
set showmatch			" pokaz otwierający nawias gdy wpisze zamykający
set so=5			" przewijaj juz na 5 linii przed końcem
set statusline=%y[%{&ff}]\ \ ASCII=\%03.3b,HEX=\%02.2B\ %=%m%r%h%w\ %1*%F%*\ %l:%v\ (%p%%)
set laststatus=2		" zawsze pokazuj linię statusu
set fo=tcrqn			" opcje wklejania (jak maja być tworzone wcięcia itp.)
set hidden			" nie wymagaj zapisu gdy przechodzisz do nowego bufora
set expandtab   " zamiana tab na spacje
set tabstop=2 			" ustawienie wielkości taba na 2 spacje
set shiftwidth=2
set tw=80
set tags+=./stl_tags		" tip 931
set foldtext=MojFoldText()	" tekst po zwinięciu zakładki
set foldminlines=3		" minimum 3 linie aby powstał fold
set hlsearch		" zaznaczanie szukanego tekstu

let php_sql_query = 1		" podkreślanie składni SQL w PHP
let php_htmlInStrings = 1	" podkreślanie składni HTML w PHP
let python_highlight_all = 1

behave xterm

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vim Bundle
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
Bundle 'mileszs/ack.vim'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

" latex

"set shellslash
""
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"filetype indent on
":nmap <C-f> :FindFile<CR>
"
" surround mapping
"
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
""
""
""
"set nowritebackup
""
" Autoremoving all trialling whitespace during save
autocmd BufWritePre * :%s/\s\+$//e
""
""" latex config
""
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_ViewRule_pdf='xpdf'
""
filetype on
filetype indent on
filetype plugin on

"" MACROS
"" reformating html
"let @h=':%s/>\s*</>\r</g:set ft=htmlggVG='

syntax on		" kolorowanie składni
let g:tex_flavor='latex'
