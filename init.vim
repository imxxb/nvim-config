inoremap <special> jk <ESC>

set nocompatible
filetype plugin on
syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


set number
set relativenumber
set cursorline

" 设置缩进和 tab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"
" " 设置上下滚屏留白
set scrolloff=4
"
" " 自动换行
set wrap
"
" " 在右下角显示正在输入的命令
set showcmd
"
" " 类似 zsh 选择式补全
set wildmenu
"
set hlsearch
" " 打开新文件取消上一次检索
exec "nohlsearch"
set incsearch
" " 忽略大小写
set ignorecase
" " 智能分辨搜索大小写
set smartcase
" noremap <LEADER>sq :nohlsearch <CR>
"
"
" vimwiki
 let g:vimwiki_list = [
             \{"path": "~/Documents/brain4-as-md/", 
             \ "path_html": "~/Public/brain4-as-md/",
             \ "syntax": "markdown", 
             \ "ext": ".md",
             \ "auto_export": 0}
             \]
