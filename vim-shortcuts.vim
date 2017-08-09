" Paste mode
set pastetoggle=<F2>

" fold toggle
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" leader: <Space>
let g:mapleader=' '

" the arrow key magic
nnoremap N h|vnoremap N h
nnoremap I l|vnoremap I l
nnoremap u k|vnoremap u k
nnoremap e j|vnoremap e j

" word surffing
nnoremap n b|vnoremap n b
nnoremap i w|vnoremap i w

" home, end, half page up, half page down
nnoremap tn ^|vnoremap tn ^
nnoremap ti $|vnoremap ti $
nnoremap tu <C-u>|vnoremap tu <C-u>
nnoremap te <C-d>|vnoremap te <C-d>

" save
nnoremap tw :w<CR>

" select current word
nnoremap w viw

" paragragh surffing
nnoremap U {|vnoremap U {
nnoremap E }|vnoremap E }

" h is now insert mode
nnoremap h i
nnoremap H I
xnoremap <silent> <expr> h (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
xnoremap <silent> <expr> H (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")

" kill, with no mercy.
nnoremap <C-c> :q!<Enter>
" paste
inoremap <C-v> <C-[>pa
" undo
inoremap <C-z> <C-[>ui
nnoremap zz u
nnoremap tt u
" redo
nnoremap ty <C-r>

" jump to last modified
nnoremap tj U

" sudo save
cmap w!! w !sudo tee > /dev/null %

" indent
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" enter key to split line
nnoremap <CR> i<CR>

" swap ; :
nnoremap ; :|vnoremap ; :
nnoremap : ;|vnoremap : ;

" new tab
" nnoremap <C-t> :tabfind<Space>
nnoremap <C-t> :FZF<CR>

" tab switching
nnoremap j gT
nnoremap l gt

" autocomplete
inoremap <C-Space> <C-x><C-o>

" disable highlight temporary
nnoremap <silent> <Leader><Leader> :noh<CR>

" CtrlP
nnoremap <silent> b :CtrlPBuffer<CR>
nnoremap <silent> <Leader>; :CtrlPCmdPalette<CR>

" vim-easy-align
vmap <Leader>e <Plug>(EasyAlign)
nmap <Leader>e <Plug>(EasyAlign)

" pane jump
nnoremap zn <C-w>h
nnoremap zi <C-w>l
nnoremap zu <C-w>k
nnoremap ze <C-w>j

" pane resize
nnoremap <silent> - :vertical resize -5<CR>
nnoremap <silent> = :vertical resize +5<CR>
nnoremap <silent> _ :resize -5<CR>
nnoremap <silent> + :resize +5<CR>

" emmet
inoremap <silent> <C-l> <Esc>:call emmet#expandAbbr(3,"")<CR>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" swap number keys

" map each number to its shift-key character
inoremap 1 !
inoremap 2 @
inoremap 3 #
inoremap 4 $
inoremap 5 %
inoremap 6 ^
inoremap 7 &
inoremap 8 *
inoremap 9 (
inoremap 0 )
inoremap - _
" and then the opposite
inoremap ! 1
inoremap @ 2
inoremap # 3
inoremap $ 4
inoremap % 5
inoremap ^ 6
inoremap & 7
inoremap * 8
inoremap ( 9
inoremap ) 0
inoremap _ -

" map each number to its shift-key character
nnoremap 1 !
nnoremap 2 @
nnoremap 3 #
nnoremap 4 $
nnoremap 5 %
nnoremap 6 ^
nnoremap 7 &
nnoremap 8 *
nnoremap 9 (
nnoremap 0 )
nnoremap - _
" and then the opposite
nnoremap ! 1
nnoremap @ 2
nnoremap # 3
nnoremap $ 4
nnoremap % 5
nnoremap ^ 6
nnoremap & 7
nnoremap * 8
nnoremap ( 9
nnoremap ) 0
nnoremap _ -

" map each number to its shift-key character
vnoremap 1 !
vnoremap 2 @
vnoremap 3 #
vnoremap 4 $
vnoremap 5 %
vnoremap 6 ^
vnoremap 7 &
vnoremap 8 *
vnoremap 9 (
vnoremap 0 )
vnoremap - _
" and then the opposite
vnoremap ! 1
vnoremap @ 2
vnoremap # 3
vnoremap $ 4
vnoremap % 5
vnoremap ^ 6
vnoremap & 7
vnoremap * 8
vnoremap ( 9
vnoremap ) 0
vnoremap _ -

