set nocompatible
syntax on
set t_Co=257				"256 colors
set number					"line number
set autoindent
set tabstop=4
set softtabstop=4
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
autocmd Filetype python setlocal expandtab      "expand tab only for python
set hlsearch				"highlight search
hi Search ctermbg=88			"red
set ignorecase  "when searching for text
hi comment cterm=bold ctermfg=white
set cursorline
hi clear cursorline
hi cursorline ctermbg=darkgrey
hi clear visual
hi visual ctermbg=darkgrey
hi statement ctermfg=magenta
hi preproc ctermfg=magenta
hi string ctermfg=11 "yellow
hi constant ctermfg=11	"yellow
hi identifier ctermfg=13 "purple
hi function ctermfg=14 "cyan
hi MatchParen ctermfg=white ctermbg=red
hi Type ctermfg=lightblue
hi special ctermfg=lightblue
hi LineNr ctermfg=lightgray
hi Title ctermfg=10
"hi operator ctermfg=white
"match operator /[-+=[](){}]/
hi xmlTag ctermfg=magenta
hi xmlTagName ctermfg=magenta
hi xmlEndTag ctermfg=magenta
hi htmlTag ctermfg=magenta
hi htmlTagName ctermfg=magenta
hi erubyDelimiter ctermfg=14 "cyan
