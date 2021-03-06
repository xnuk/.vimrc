scriptencoding utf8
" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" vim-mustache-handlebars
let g:mustache_operators = 0

" Emmet
let g:user_emmet_mode='ni' " use only normal and insert mode
let g:user_emmet_install_global = 0
augroup EmmetInstall
	autocmd FileType html,pug,php EmmetInstall
augroup end

" vim-gitgutter
let g:gitgutter_map_keys = 0

" elm-vim
let g:elm_setup_keybindings = 0

" incsearch
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" is.vim + anzu
let g:is#do_default_mappings = 0
"nnoremap } <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
"nnoremap { <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
"nnoremap <Tab> <Plug>(anzu-star-with-echo)<Plug>(is-nohl-1)
"nnoremap <S-Tab> <Plug>(anzu-sharp-with-echo)<Plug>(is-nohl-1)
"nnoremap * <Plug>(anzu-star-with-echo)<Plug>(is-nohl-1)
"nnoremap # <Plug>(anzu-sharp-with-echo)<Plug>(is-nohl-1)

" fzf
if executable('rg')
	command! -bang -nargs=* Rg
		\ call fzf#vim#grep('rg ' .
		\   '--color=always ' .
		\   '--glob "!.git/*" ' .
		\   '--ignore-case ' .
		\   '--line-number ' .
		\   '--column ' .
		\   '--no-heading ' .
		\   '--hidden ' .
		\   '--ignore-file=~/.gitignore_global ' .
		\   '--follow ' .
		\   <q-args>, 1,
		\   fzf#vim#with_preview('right:50%'),
		\   <bang>0)
endif

" tex
let g:vimtex_complete_close_braces = 1
let g:airline#extensions#vimtex#enabled = 1
let g:vimtex_imaps_leader = '`'
let g:vimtex_mappings_enabled = 0

" utilsnip
let g:UltiSnipsExpandTrigger='<c-k>'
let g:UltiSnipsJumpForwardTrigger='<c-k>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'

" ime
let g:ime_plugins = ['hangul', 'emoji', 'builtin-kana']
let g:ime_toggle_english = '<C-e>'
let g:ime_cancel_input = '<C-i>'
let g:ime_select_mode = '<C-h>'

" tpope sucks
let g:endwise_no_mappings = 1

" wordmotion
let g:wordmotion_mappings = {
\ 'w' : 'i',
\ 'b' : 'n',
\ 'e' : '',
\ 'ge' : '',
\ 'aw' : '',
\ 'iw' : 'tw',
\ '<C-R><C-W>' : '' }

" smartpairs
let g:smartpairs_revert_key = '<BS>'

" auto-pairs
let g:AutoPairsShortcutJump='<C-]>'
let g:AutoPairsMapBS = 0
let g:AutoPairsMapCh = 0
let g:AutoPairsMapCR = 0
let g:AutoPairsMapSpace = 0
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-t>'

" rainbow
let g:rainbow_active = 1

" Switch.vim
let g:switch_mapping = '-'
