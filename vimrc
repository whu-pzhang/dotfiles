set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Solarized Color Scheme
syntax on	" 语法高亮
let g:solarized_termcolors=128
set background=dark
colorscheme solarized

" Powerline
set t_Co=16
set laststatus=2	" 显示状态栏
set noshowmode		" 不显示模式栏
let g:Powerline_colorscheme='solarized256'
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" NerdTree
" F2用于开启/关闭NERDTree
map <F2> :NERDTreeToggle<CR>
" 若退出vim时仅剩下nerdtree则自动退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" indentLine
let g:indentLine_char='¦'
let g:indentLine_color_term=200
let g:indentLine_faster = 1

"   显示相关
set shortmess=atI   " 启动时不显示援助乌干达儿童
set number          " 显示行号
set relativenumber  " 显示相对行号
" 为方便复制，用<F2>开启/关闭行号和相对行号显示:
" 由于使用了YCM，在做语法检查时会占用一列，因而即使F2也无法完美复制
" nnoremap <F2> :set nonumber!<CR>:set nornu!<CR>:set foldcolumn=0<CR>
set ruler           " 显示光标位置
set cursorline      " 突出显示当前行
set showcmd         " 状态栏右下角显示当前指令
set showmatch       " 高亮显示匹配的括号
set matchtime=1     " 匹配括号高亮的时间（0.1s）
set guioptions-=L   " 禁止显示滚动条
set guioptions-=r
set guioptions-=R

set foldmethod=syntax   " 基于语法进行代码折叠
set nofoldenable    " 启动vim时关闭折叠代码

set guioptions-=m   " 禁止显示菜单和工具条
set guioptions-=T

set tabstop=4       " Tab键的宽度
set softtabstop=4
set shiftwidth=4    " 自动缩进的宽度
set expandtab

"   编辑相关
set nobackup        " 不备份
set backspace=indent,eol,start
" 自动缩进
set autoindent
set cindent
set smarttab
set smartindent

"   搜索
set hlsearch
set incsearch
set ignorecase      " 搜索忽略大小写

autocmd BufWritePre * :%s/\s\+$//e  " 自动删除行尾空格
