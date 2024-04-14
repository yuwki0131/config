(define-configuration (web-buffer prompt-buffer panel-buffer
                       nyxt/mode/editor:editor-buffer)
  ((default-modes (pushnew 'nyxt/mode/emacs:emacs-mode %slot-value%))))


(define-configuration browser
  ((keymap-scheme
    (let ((map (make-keymap "Emacs-like keymap")))
      ;; C-n で次の行へ
      (define-key map "C-n" 'nyxt/web-mode:scroll-down)
      ;; C-p で前の行へ
      (define-key map "C-z" 'nyxt/web-mode:scroll-up)
      ;; C-f で右へスクロール
      (define-key map "C-f" 'nyxt/web-mode:scroll-right)
      ;; C-b で左へスクロール
      (define-key map "C-b" 'nyxt/web-mode:scroll-left)
      ;; C-x C-c でNyxtを終了
      (define-key map "C-x C-c" 'nyxt:quit)
      ;; その他のキーバインドもここに追加
      map))))

