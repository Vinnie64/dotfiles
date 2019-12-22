set nu rnu

augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set nocompatible

syntax enable
filetype plugin on

set path+=**

set wildmenu

