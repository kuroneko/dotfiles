set modeline
filetype plugin indent on
colorscheme koehler
syntax enable
set background=dark
set lz nu hls cul

set ts=8 sta ai
set cpoptions+=v$
set cc=78

set mouse=a
set guioptions+=cg
set guioptions-=tT

if has("gui_running")
	highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

autocmd FileType Haml setlocal et sw=2 sts=2
autocmd FileType python setlocal et sw=4 sts=4
autocmd FileType Ruby setlocal et sw=2 sts=2
