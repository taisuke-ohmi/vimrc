"カラースキーマを設定
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
set number
set tabstop=2
set autoindent
set smartindent
set expandtab
set shiftwidth=2

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" 閉じタグ自動補完
NeoBundle 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.vue'

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don’t set neobundle setting in .gvimrc!
NeoBundle 'fatih/vim-go'
let g:go_version_warning = 0
let g:go_fmt_command = 'goimports'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'

let g:syntastic_mode_map = { 'mode': 'passive',
    \ 'active_filetypes': ['go', 'ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_go_checkers = ['go', 'golint']

" Vue
NeoBundle 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

"" NERDTree自動開閉
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

NeoBundleCheck

