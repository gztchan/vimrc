set guifont=Source_Code_Pro_Light:h14 " 字体

let mapleader="," " 设置 <leader>

set timeoutlen=2000 " 增加<leader> 等组合键时间 2s
set lines=70 columns=150
set nospell " 关闭拼写检查
set autoread " 外部改变时，vim 读取
set nu " 显示行数
set cursorcolumn " 突出 column
set cursorline " 突出 row
set numberwidth=10 " 行号宽度
set ruler " 设置标尺
set encoding=utf8 " eccode
set cul
set showcmd
set foldenable " 可折叠
set foldmethod=manual " 手动折叠
set nocompatible " 兼容模式

set noswapfile " 取消 swapfile
set nobackup " 取消备份
set nowb
set nowrap " 取消自动换行
set backspace=indent,eol,start whichwrap+=<,>,[,]

set list listchars=tab:>?,trail:? " 问号代替空白字符
set clipboard=unnamed " 共享系统 clipboard
set viminfo='1000,<800

syntax on
syntax enable
set background=dark
colorscheme solarized
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
set transparency=3 " 透明度

" == 缩进 ==
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" == Mapping ==
map <Leader>w :w<CR>

" == NERDTree ==
autocmd VimEnter * NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * NERDTreeMirror
let NERDTreeQuitOnOpen=0

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'danro/rename.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Shougo/neocomplcache'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'
Plugin 'depuracao/vim-rdoc'
Plugin 'rizzatti/dash.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'git@github.com:ervandew/supertab.git'
Plugin 'Lokaltog/powerline', {'rtp': 'powderline/bindings/vim'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'darthmall/vim-vue'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'moll/vim-node'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-pug'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim' " 寫前端代碼神器
Plugin 'Lokaltog/vim-easymotion' " 文本快速查找
Plugin 'godlygeek/tabular' " 对齐

call vundle#end()
filetype plugin indent on

" Ag
let g:ackprg='ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'

" == Neocomplcache ==
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1

" == EasyMotion ==
map f <Plug>(easymotion-sn)
let g:EasyMotion_smartcase=1

" == Powderline ==
let g:Powerline_symbols='fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" == NERDCommenter ==
let g:NERDSpaceDelims=1
let NERDTreeShowHidden=1

" == ctrlp ==
let g:ctrlp_max_files=0

function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

" == 括号 ==
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_max=16
let g:rbpt_loadcmd_toggle=0
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" == vim-indent-guides ==
let g:indent_guides_enable_on_vim_startup=1
