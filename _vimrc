"=========����==================
" ��������ʾ���������ʾ   
set shortmess=atI  
" �رռ���viģʽ
set nocompatible
"��ʾ�����ѡ����
set wildmode=longest:list
"���ò˵�����
set encoding=chinese 
set langmenu=zh_CN.UTF-8
"�������� 
"�����������ģʽΪWINDOWSģʽ
behave mswin
"����ļ�����
filetype on  
"���ݲ�ͬ�ļ����ͼ��ز��
filetype plugin indent on  
"���ݲ�ͬ�ļ�����������������ļ�  
filetype indent on  
"���� Tab �����Ϊ 4 ���ո�
set tabstop=4
"����ÿ�е�����ͬ��һ����ͬ
set autoindent
"����256ɫ֧��
"set t_Co=256 


"===============��ʾ����==================

"���������ɫ����dark��light��
set background=dark
"������ɫ����
colorscheme solarized
" ͼ�ν�����ֻ��ʾ�˵�
if has('gui_running')
      set guioptions=mcr
endif
"��ʾ�к�
set number
"��״̬�����
set ruler 
"ͻ����ʾ��ǰ��
set cursorcolumn
set cursorline    
"���ڴ�С����
set lines=40 columns=155
"���ô���λ��
winpos 5 5   
set cursorline 



"=================�ļ��������������=================
"
"
"
"
"
"
"



"==================�༭����=================
"�﷨������Ϊ������ԵĲ�ͬ�������ò�ͬ����ɫ
syntax enable
syntax on
"���ݼ�⵽���ļ���չ��Ϊ�ļ������﷨����
set syn=cpp
"�����ֶ��۵�
set foldmethod=manual

"=================�Զ������ӳ��=============
"������ʾƥ�������  
set showmatch  
"�Զ���ȫ���ź�����
"�Զ��۵�����
"��������
"��ʷ��¼��
set history=1000
"ͨ��%ƥ���ƶ��ɶ��ַ�
set matchpairs=(:),{:},[:],<:>
:set showmatch
"ֻ��һ����д��ĸ�������ʣ�����Сд���У�����������Ǵ�Сд�����С�
set smartcase
"�۵���������























"=================�Զ������ӳ��=============
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




"==================�Զ��幦�ܺ���=====================
"�Զ���󻯴���
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





"==============�������======================
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
"=========Ϊ��ͬ��׺�����ļ�ѡ��ͬ����===========
"

