set guifont=Monaco:h11

colorscheme monokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

"NERDTree 設定"
autocmd VimEnter * NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * NERDTreeMirror

let NERDTreeQuitOnOpen=0"
"啟動摺疊功能"
set foldenable"
set foldmethod=manual"

set nospell

set nu

set autoread

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Shougo/neocomplcache'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-bundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'
Plugin 'depuracao/vim-rdoc'
Plugin 'tpope/vim-endwise'

" 寫前端代碼神器
Plugin 'mattn/emmet-vim'

" 文本快速查找
Plugin 'Lokaltog/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

" ctrl
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ag
let g:ackprg='ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'

set ts=2

" Neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

let mapleader=","

" Leader
map <Leader>w :w<CR>

map f <Plug>(easymotion-sn)
let g:EasyMotion_smartcase = 1

set cursorline
set numberwidth=5
set ruler
set encoding=utf8

syntax on
syntax enable

autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
" autocmd Syntax javascript set syntax=`jquery

set list listchars=tab:»·,trail:·

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb
set nowrap                        "don't wrap lines
set backspace=indent,eol,start    " backspace through everything in insert mode

" ================ Indentation ======================
set autoindent
set copyindent    " copy the previous indentation on autoindenting
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

