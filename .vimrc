" vundle setting
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()  

filetype plugin indent on

" tab setting
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal noexpandtab
