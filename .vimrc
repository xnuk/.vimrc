source ~/.vimrc.d/vim-set.vim
source ~/.vimrc.d/vim-plugin-conf.vim
source ~/.vimrc.d/vim-plugin-list.vim
source ~/.vimrc.d/vim-shortcuts.vim

au BufNewFile,BufRead *.jison set filetype=javascript
au BufNewFile,BufRead .babelrc set filetype=json

syntax on
colo Tomorrow-Night

au InsertEnter * set cursorline
au InsertLeave * set nocursorline

au InsertEnter * colo Tomorrow-Night-Bright
au InsertLeave * colo Tomorrow-Night

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

" diff between current buffer and saved one
function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
com! DiffBuffer call s:DiffWithSaved()
