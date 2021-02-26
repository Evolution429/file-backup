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

;;设置Emacs在空闲下来的时候就自动进行垃圾收集
(defvar k-gc-timer
  (run-with-idle-timer 15 t
                       'garbage-collect))

;;设置通过记录每次垃圾收集的时间来进行判断和调整
(defmacro k-time (&rest body)
  "Measure and return the time it takes evaluating BODY."
  `(let ((time (current-time)))
     ,@body
     (float-time (time-since time))))

(defvar k-gc-timer
  (run-with-idle-timer 15 t
                       (lambda ()
                         (message "Garbage Collector has run for %.06fsec"
                                  (k-time (garbage-collect))))))






;;=======================插件源设置====================
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") 
   
                         ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
   
                         ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


(package-initialize)


;;=======================配置加载插件方式=======================
;;激活evil插件，使启动emacs时开启evil
(require 'evil)
(evil-mode t)

; 开启全局 Company 补全
(global-company-mode 1)










;;=======================显示设置======================
;;设置背景颜色
(set-background-color "#002B2B")
;;设置字体颜色
(set-foreground-color "#FFFFFF")
;;设置区域背景色
(set-face-background 'region "blue")

;;设置主题
(load-theme 'monokai t)

;;显示行号
(global-linum-mode 1)        ;; 总是显示行号
(setq linum-format " %d -")  ;; 行号显示格式

;;高亮当前行
(require 'hl-line)
(global-hl-line-mode t)

;;语法高亮
(global-font-lock-mode t) 

; 关闭菜单栏和工具栏
(menu-bar-mode -1)
(tool-bar-mode -1)

;;关掉启动界面
(setq inhibit-startup-screen t)

;;设置启动时窗口最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;设置emacs启动窗口大小(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))


;;设置Mode Line主题
(use-package smart-mode-line 
    
:init 
    
(setq sml/no-confirm-load-theme t) 
    
(setq sml/theme 'respectful) 
    
(sml/setup))





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
