call plug#begin()

Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" text object
Plug 'kana/vim-textobj-user' " custom text object

" align text vertically
Plug 'junegunn/vim-easy-align'

" multiple cursors, like Sublime Text.
Plug 'terryma/vim-multiple-cursors'

Plug 'Shougo/vimproc.vim', {'do': 'make'} " interactive command execution

" language syntax
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'digitaltoad/vim-pug', {'for': 'pug'}
Plug 'wavded/vim-stylus', {'for': 'stylus'}
Plug 'vim-scripts/haskell.vim', {'for': 'haskell'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'racer-rust/vim-racer', {'for': 'rust'}
Plug 'dag/vim-fish', {'for': 'fish'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Kuniwak/vint', {'for': 'vim'}
Plug 'gutenye/json5.vim', {'for': 'json5'}
Plug 'rhysd/vim-crystal', {'for': 'crystal'}
" This DOES key binds, for mustache.
" [[ jumps to the first previous tag
" ]] jumps to the first following tag
Plug 'mustache/vim-mustache-handlebars'

" This DOES key binds, for markdown.
" `gx` open the link in browser
" `ge` open the link in Vim
" ]] go to next header
" [[ go to previous header
" ][ go to next sibling header
" [] go to previous sibling header
" ]c go to current header
" ]u go to parent header
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fisadev/vim-ctrlp-cmdpalette' " command auto-complete

" FZF
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install --all'}
Plug 'junegunn/fzf.vim'

" incsearch
" this MAY binds key
Plug 'haya14busa/is.vim'

" see current find status
Plug 'osyo-manga/vim-anzu'

Plug 'AndrewRadev/linediff.vim' " Select lines, and execute :Linediff

" Haskell
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
Plug 'Twinside/vim-hoogle', {'for': 'haskell'} " :Hoogle*

" Python
" Plug 'klen/python-mode', {'for': 'python'}
" Plug 'davidhalter/jedi-vim', {'for': 'python'}

Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab' " tab complete

" This DOES key binds. `<c-y>,` only.
Plug 'mattn/emmet-vim'

" .swp diff
Plug 'chrisbra/Recover.vim'

" start screen
Plug 'mhinz/vim-startify'

" shows a git diff in number column
Plug 'airblade/vim-gitgutter'

" Elm
Plug 'ElmCast/elm-vim', {'for': 'elm'}

" vim as file manager
Plug 'mbbill/VimExplorer'

" trying
Plug 'Twinside/vim-haskellFold', {'for': 'haskell'}
Plug 'dan-t/vim-hsimport', {'for': 'haskell'}

Plug 'bitc/vim-hdevtools', {'for': 'haskell'}
"Plug 'vim-syntastic/syntastic'

" TypeScript
Plug 'Quramy/tsuquyomi'

" LICENSE templates
Plug 'antoyo/vim-licenses'

" ale linter
Plug 'w0rp/ale'

" JSON
Plug 'elzr/vim-json', {'for': 'json'}

" Latex
Plug 'lervag/vimtex', {'for': ['bib', 'tex']}
Plug 'xuhdev/vim-latex-live-preview', {'for': ['bib', 'tex']}

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

" wat
Plug 'pi314/ime.vim'
Plug 'pi314/ime-emoji.vim'
Plug 'xnuk/hangul-ime'

" transpose
Plug 'salsifis/vim-transpose'

Plug 'enricobacis/vim-airline-clock'

Plug 'neovimhaskell/haskell-vim'

" Word jump
" This actually binds key, and terribly overrides key. Please see manual.
" This changes behavior of w, b, e, ge, aw, iw, <C-R><C-W>
Plug 'chaoren/vim-wordmotion'

" Repeatedly pressing `v` extends visual block
" This binds key.
Plug 'xnuk/smartpairs.vim', {'branch': 'no-viv'}

call plug#end()

" %
packadd! matchit

" Try to get foreground Vim
packadd! editexisting

" gdb debug with :Termdebug
packadd! termdebug
