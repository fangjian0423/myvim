"打开语法高亮 
syntax on 
""设置背景色，每种配色有两种方案，一个light、一个dark 
set background=dark 
colorscheme desert
"显示行号 
set number 
""设置缩进有三个取值cindent(c风格)、smartindent(智能模式，其实不觉得有什么智能)、autoindent(简单的与上一行保持一致) 
set autoindent 
"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来
set backspace=indent,eol,start 
""用空格键替换制表符 
:set expandtab 
"制表符占4个空格 
set tabstop=4 
""默认缩进4个空格大小 
set shiftwidth=4 
"增量式搜索 
"set incsearch 
""高亮搜索 
set hlsearch 
"有时中文会显示乱码，用一下几条命令解决 
let &termencoding=&encoding 
set fileencodings=utf-8
""很多插件都会要求的配置检测文件类型 
:filetype on 
:filetype plugin on 
:filetype indent on 
"下边这个很有用可以根据不同的文件类型执行不同的命令 
""例如：如果是c/c++类型 
:autocmd FileType c,cpp : set foldmethod=syntax 
:autocmd FileType c,cpp :set number 
:autocmd FileType c,cpp :set cindent 
"例如：如果是python类型 
:autocmd FileType python :set number 
:autocmd FileType python : set foldmethod=syntax 
:autocmd FileType python :set smartindent


set nocompatible                " be iMproved
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"
"
"" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"
"
" " My Bundles here:
"
"
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi'
Bundle 'scrooloose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'
"
"
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
" F2打开nerdtree插件
nmap <F2> :NERDTreeToggle <CR>
noremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>
" vim内部使用F5可以运行正在编辑的python文件
au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
" tb打开tagbar插件
nmap tb :Tagbar<cr>
let tagbar_ctags_bin='/usr/bin/ctags'
let tagbar_width=25

" 语法检查的配置
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0


" vim-indent-guides 的配置
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
