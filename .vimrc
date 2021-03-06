set encoding=utf-8
source ~/.vimrc.d/vim-set.vim
source ~/.vimrc.d/vim-plugin-conf.vim
source ~/.vimrc.d/vim-plugin-list.vim
source ~/.vimrc.d/vim-shortcuts.vim

au BufNewFile,BufRead *.jison set filetype=javascript
au BufNewFile,BufRead .babelrc set filetype=json

syntax on


augroup SignColumnPopupSucks
	autocmd BufEnter * sign define dummy
	autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
augroup end

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

" augroup numbertoggle
" 	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" 	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

" diff between current buffer and saved one
function! s:DiffWithSaved()
	let l:filetype=&filetype
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe 'setlocal bt=nofile bh=wipe nobl noswf ro ft=' . l:filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
com! DiffBuffer call s:DiffWithSaved()

" au BufWritePost *.hs  silent !fast-tags %
" au BufWritePost *.hsc silent !fast-tags %
" nnoremap <silent> <c-]> :setl iskeyword=@,_,.,48-57,39<cr><c-]>
"   \:setl iskeyword=@,48-57,_,192-255<cr>

function! ToggleVerbose()
    if !&verbose
        set verbosefile=~/test.log
        set verbose=15
    else
        set verbose=0
        set verbosefile=
    endif
endfunction

function! IMEStatusString ()
	if exists('*ime#mode')
		return ime#mode()
	endif
	return ''
endfunction

call airline#parts#define_function('IMEStatus', 'IMEStatusString')
let g:airline_section_x = airline#section#create(['IMEStatus'])

hi! ALEWarning ctermbg=black
