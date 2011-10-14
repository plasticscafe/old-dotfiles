" local setting pre load
if filereadable($HOME . '/.vim/local/.vimrc_local_pre')
    source ~/.vim/local/.vimrc_local_pre
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle setting
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()  

filetype plugin indent on

" tab setting
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal noexpandtab

" display Hard tab
set list listchars=tab:>-

" deisplay Zenkaku Space
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" local setting post load
if filereadable($HOME . '/.vim/local/.vimrc_local_post')
    source ~/.vim/local/.vimrc_local_post
endif
