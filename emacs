;;=======================��������=====================
;;�����������Ի���
;;(set-language-environment 'Chinese-GB)

;;д�ļ��ı��뷽ʽ
;;(set-buffer-file-coding-system 'gb2312)
(set-buffer-file-coding-system 'utf-8)

;;�½��ļ��ı��뷽ʽ
;;(setq default-buffer-file-coding-system 'gb2312)
(setq default-buffer-file-coding-system 'utf-8)

;;�ն˷�ʽ�ı��뷽ʽ
(set-terminal-coding-system 'utf-8)

;;��������ı��뷽ʽ
;;(set-keyboard-coding-system 'gb2312) 
(set-keyboard-coding-system 'utf-8) 
    
;;��ȡ��д���ļ����ı��뷽ʽ
(setq file-name-coding-system 'utf-8)   



;;����Emacs�ڿ���������ʱ����Զ����������ռ�
(defvar k-gc-timer
  (run-with-idle-timer 15 t
                       'garbage-collect))

;;����ͨ����¼ÿ�������ռ���ʱ���������жϺ͵���
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






;;=======================���Դ����====================
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") 
   
                         ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
   
                         ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


(package-initialize)


;;=======================���ü��ز����ʽ=======================
;;����evil�����ʹ����emacsʱ����evil
;;(evil-mode 1)
(require 'evil)
(evil-mode t)




; ����ȫ�� Company ��ȫ
(global-company-mode 1)










;;=======================��ʾ����======================
;;���ñ�����ɫ
(set-background-color "#002B2B")
;;����������ɫ
(set-foreground-color "#FFFFFF")
;;�������򱳾�ɫ
(set-face-background 'region "blue")

;;��������
(load-theme 'monokai t)

;;��ʾ�к�
(global-linum-mode 1)        ;; ������ʾ�к�
(setq linum-format " %d -")  ;; �к���ʾ��ʽ

;;������ǰ��
(require 'hl-line)
(global-hl-line-mode t)

;;�﷨����
(global-font-lock-mode t) 

;;�رղ˵����͹�����
;;(menu-bar-mode -1)
(tool-bar-mode -1)

;;�ص���������
(setq inhibit-startup-screen t)

;;��������ʱ�������
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;����emacs�������ڴ�С(�����Լ�������ע���ʽ����(top . 0)��Բ��ǰ��Ҫ���пո�)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))





;;=======================��ݼ�����====================




;;=======================�༭����======================
;;������ƥ����ʾģʽ
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; ���õ������Զ���ȫ����
(electric-pair-mode t)
(electric-pair-mode 1)

;;����tabΪ4���ո�Ŀ��
;;(setq default-tab-width 4)

;;�Զ���ȫ
;;�����۵�

;;=======================�ļ��Զ�����========================


















;;=======================�����ʼ������======================
;;
;;
;;
;;







;;=======================��̲��=============================