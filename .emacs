;;=======================基础设置=====================
;;设置中文语言环境
;;(set-language-environment 'Chinese-GB)

;;写文件的编码方式
;;(set-buffer-file-coding-system 'gb2312)
(set-buffer-file-coding-system 'utf-8)

;;新建文件的编码方式
;;(setq default-buffer-file-coding-system 'gb2312)
(setq default-buffer-file-coding-system 'utf-8)

;;终端方式的编码方式
(set-terminal-coding-system 'utf-8)

;;键盘输入的编码方式
;;(set-keyboard-coding-system 'gb2312) 
(set-keyboard-coding-system 'utf-8) 
    
;;读取或写入文件名的编码方式
(setq file-name-coding-system 'utf-8) 






;;设置emacs启动窗口大小
(setq default-frame-alist 
'((height . 32) (width , 50) (menu-bar-lines . 20) (tool-bar-lines . 0))) 

;;=======================插件源设置====================
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)







;;=======================配置加载插件方式=======================













;;=======================显示设置======================
;;设置背景颜色
(set-background-color "black")
;;设置字体颜色
(set-foreground-color "white")


;;显示行号
(global-linum-mode 1)        ;; 总是显示行号
(setq linum-format " %d -")  ;; 行号显示格式

;;高亮当前行
(require 'hl-line)
(global-hl-line-mode t)

;;语法高亮
(global-font-lock-mode t) 

;;去掉菜单栏，将F10绑定为显示菜单栏，需要菜单栏了可以摁F10调出，再摁F10就去掉菜单
(menu-bar-mode nil)




;;=======================快捷键设置====================




;;=======================编辑设置======================
;;打开括号匹配显示模式
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 内置的智能自动补全括号
(electric-pair-mode t)

;;设置tab为4个空格的宽度
;;(setq default-tab-width 4)

;;自动补全
;;代码折叠

;;=======================文件自动备份========================


















;;=======================插件初始化设置======================
;;
;;
;;
;;







;;=======================编程插件=============================
