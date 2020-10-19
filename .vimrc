set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'lewis6991/moonlight.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"" vim
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-b> :set norelativenumber!<CR>
set termguicolors
syntax on
syntax enable
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set expandtab
:set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/**/*.*,*/venv/**,**/.git/**
:set relativenumber
:set hlsearch


"" Python Syntax
let g:python_highlight_all = 1
let g:python_slow_sync = 0
let g:python_version_2 = 0



"" NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['standard']

nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
cabbrev <silent> bd <C-r>=(getcmdtype()==#':' && getcmdpos()==1 ? 'lclose\|bdelete' : 'bd')<CR>

"" ctrlp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
let g:ctrlp_user_command = 'find %s -type f'

"" moonlight
:colorscheme plastic
