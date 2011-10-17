""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" local setting pre load
if filereadable($HOME . '/.vim/local/.vimrc_local_pre')
    source ~/.vim/local/.vimrc_local_pre
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neobundle setting
"
if has('vim_starting')
    execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
    filetype off
    call neobundle#rc(expand('~/.vim/bundle'))
    filetype plugin on
    filetype indent on
endif

NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic setting
"
set nocompatible
syntax on
set showmatch 

" backspace
noremap ^? ^H
noremap! ^? ^H
"noremap ^H
"noremap! ^H
set backspace=2

" status line
set statusline=%F%m%r%h%w\ %=[FORMAT=%{&ff}][LINE:%l/%L]
set laststatus=2 

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
