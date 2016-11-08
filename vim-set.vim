set nocompatible " no vi-compatible

set mouse=a " mouse mode
set winaltkeys=no " allow mapping of alt key

set t_Co=256
set t_ut=
set background=dark
set lazyredraw " don't redraw while executing macros/mappings

set nostartofline " keep cursor in the same column (especially indenting stuff)
set virtualedit=block " cursor can be positioned where there is no actual character in Visual block mode

set whichwrap=b,s,[,],<,>

set scrolloff=2 " minimal number of lines to keep above and below the cursor

set incsearch " while typing a search command, show where the pattern
set hlsearch " highlight search

set laststatus=2 " always show status

" command line completion
set wildmenu
set wildmode=list:longest,full

set number " show line number
set nofoldenable " don't fold

set tabstop=4 " tab size
set shiftwidth=4 " indent size
set noexpandtab " I LOVE HARD TAB
set autoindent " copy indent from current line
set smartindent

" show invisible chars
set list
set listchars=tab:\|\ ,trail:·,extends:>,precedes:<,nbsp:+

" open new split panes to right and bottom
set splitbelow
set splitright
