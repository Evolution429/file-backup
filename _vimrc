"=========设置==================
" 启动不显示公益捐助提示   
set shortmess=atI  
" 关闭兼容vi模式
set nocompatible
"显示命令可选参数
set wildmode=longest:list
"设置菜单语言
set encoding=chinese 
set langmenu=zh_CN.UTF-8
"编码设置 
"设置鼠标运行模式为WINDOWS模式
behave mswin
"检测文件类型
filetype on  
"根据不同文件类型加载插件
filetype plugin indent on  
"根据不同文件类型载入相关缩进文件  
filetype indent on  
"设置 Tab 键宽度为 4 个空格
set tabstop=4
"设置每行的缩进同上一节相同
set autoindent
"开启256色支持
"set t_Co=256 


"===============显示设置==================

"设置整体的色调（dark和light）
set background=dark
"设置配色方案
colorscheme solarized
" 图形界面下只显示菜单
if has('gui_running')
      set guioptions=mcr
endif
"显示行号
set number
"打开状态栏标尺
set ruler 
"突出显示当前行
set cursorcolumn
set cursorline    
"窗口大小设置
set lines=40 columns=155
"设置窗口位置
winpos 5 5   
set cursorline 



"=================文件管理和搜索设置=================
"
"
"
"
"
"
"



"==================编辑设置=================
"语法高亮，为编程语言的不同部分设置不同的颜色
syntax enable
syntax on
"根据检测到的文件扩展名为文件设置语法高亮
set syn=cpp
"启用手动折叠
set foldmethod=manual

"=================自定义键盘映射=============
"高亮显示匹配的括号  
set showmatch  
"自动补全括号和引号
"自动折叠设置
"缩进设置
"历史记录数
set history=1000
"通过%匹配移动成对字符
set matchpairs=(:),{:},[:],<:>
:set showmatch
"只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。
set smartcase
"折叠代码设置























"=================自定义键盘映射=============
"
"
"
"
"
"
"
"
"
"




"==================自定义功能函数=====================
"自动最大化窗口
if has('gui_running')
    if has("win32")
           au GUIEnter * simalt ~x
        "elseif has("unix")
          "au GUIEnter * winpos 0 0
          "set lines=999 columns=999
    endif
endif

"
"





"==============插件设置======================
"vim-plug
call plug#begin('D:\Vim\vim82\pluged')
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mileszs/ack.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/frazrepo/vim-rainbow.git'
Plug 'preservim/nerdcommenter'

call plug#end()



"Nerd Tree
"Taglist	
"
"auto-pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"','<':'>'}
"
"
"
"=========为不同后缀名的文件选择不同设置===========
"

