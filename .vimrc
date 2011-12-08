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
NeoBundle 'git://github.com/h1mesuke/unite-outline.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'git://github.com/scrooloose/nerdcommenter.git'
NeoBundle 'git://github.com/motemen/git-vim.git'
NeoBundle 'git://github.com/leshill/vim-json.git'
NeoBundle 'git://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'git://github.com/digitaltoad/vim-jade.git'
NeoBundle 'git://github.com/tpope/vim-haml.git'
NeoBundle 'git://github.com/groenewege/vim-less.git'
NeoBundle 'git://github.com/plasticscafe/vim-less-autocompile.git'
NeoBundle 'git://github.com/cakebaker/scss-syntax.vim.git'
NeoBundle 'git://github.com/vim-scripts/sudo.vim.git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic setting
"
set nocompatible
syntax on
set showmatch 

" color
colorscheme desert

" backspace
noremap ^? ^H
noremap! ^? ^H
"noremap ^H
"noremap! ^H
set backspace=2

" status line
set statusline=%F%m%r%h%w\ %=[FORMAT=%{&ff}][LINE:%l/%L]
set laststatus=2 

" file type
au! BufRead,BufNewFile *.json set filetype=json 
au! BufRead,BufNewFile *.coffee set filetype=coffee
au! BufRead,BufNewFile *.less set filetype=less
au! BufRead,BufNewFile *.vimrc set filetype=vim

" tab setting
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal noexpandtab
autocmd FileType javascript setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType json setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType coffee setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType less setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vim setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2

" display Hard tab
set list listchars=tab:>-

" deisplay Zenkaku Space
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache
"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unite
"
let g:unite_cursor_line_highlight = 'Search'
let g:unite_abbr_highlight = 'StatusLine'
" buffer
nnoremap <silent> <leader>tb :<C-u>Unite buffer<CR>
" file 
nnoremap <silent> <leader>tf :<C-u>Unite file<CR>
nnoremap <silent> <leader>tm :<C-u>Unite file_mru<CR>
nnoremap <silent> <leader>tr :<C-u>Unite file_rec<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimshell
"
let g:vimshell_prompt = '% '
let g:vimshell_user_prompt = 'getcwd()'
let g:vimshell_right_prompt = 'strftime("%Y/%m/%d %H:%M:%S")'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-coffee-script
"
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personal Script
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" local setting post load
"
if filereadable($HOME . '/.vim/local/.vimrc_local_post')
    source ~/.vim/local/.vimrc_local_post
endif
