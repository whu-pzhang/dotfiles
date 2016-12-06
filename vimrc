set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
" Markdown plugins
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" autoformat
Plugin 'Chiel92/vim-autoformat'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.tcm_extra_conf.py'


" Solarized Color Scheme
"set t_Co=16
syntax enable	" 语法高亮
let g:solarized_termcolors=256
"set background=light
"colorscheme solarized

" Powerline
set laststatus=2	" 显示状态栏
set noshowmode		" 不显示模式栏
let g:Powerline_colorscheme='solarized256'
let g:Powerline_symbols = 'fancy'

" indentLine
let g:indentLine_char='¦'
let g:indentLine_color_term=200
let g:indentLine_faster = 1

let mapleader=';'

" vim-autoformat配置
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
let g:autoformat_remove_trailing_spaces = 0
let g:autoformat_autoindent = 0
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
let g:formatdef_astyle = '"astyle --style=kr"'
let g:formatters_c = ['astyle']
autocmd FileType vim,tex let b:autoformat_autoindent=0

"   显示相关
set shortmess=atI           " 启动时不显示援助乌干达儿童
set number                  " 显示行号
set relativenumber          " 显示相对行号
set ruler                   " 显示光标位置
set cursorline              " 突出显示当前行
set showcmd                 " 状态栏右下角显示当前命令
set colorcolumn=81          " 第81列彩色显示
set textwidth=80
set nowrap                  " 禁止代码折行
set showmatch               " 高亮显示匹配的括号
set matchtime=1             " 匹配括号高亮的时间（0.1s）

" GUI
" 禁止显示滚动条
set guifont=Monaco\ 14
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

set foldmethod=syntax   " 基于语法进行代码折叠
set nofoldenable    " 启动vim时关闭折叠代码

" Tabs
set tabstop=4               " Tab键的宽度
set softtabstop=4           " 键入Tab时占有的宽度
set shiftwidth=4            " 自动缩进的宽度
set expandtab               " 将Tab自动转换成空格

" 自动缩进
set autoindent
set cindent
set smarttab
set smartindent


"   搜索
set hlsearch                " 高亮搜索结果
set incsearch               " 实时搜索
set ignorecase              " 搜索忽略大小写
set wildmenu                " vim 自身命令行模式智能补全

" 其他
set nobackup                " 不备份
set noswapfile              " 无交换文件
set backspace=indent,eol,start

set encoding=utf-8          " 新文件默认编码

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
autocmd! bufwritepost .vimrc source %   " vimrc文件修改之后自动加载
autocmd BufWritePre * :%s/\s\+$//e      " 自动删除行尾空格
au BufRead,BufNewFile SConstruct set filetype=python " SConstruct文件以Python语法高亮显示
