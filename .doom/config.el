;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Patryk Kubiela"
      user-mail-address "pkubiela@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-tomorrow-night)
(setq doom-theme 'doom-dracula)

(setq doom-font (font-spec :family "Fira Code Retina" :size 18)
      doom-big-font (font-spec :family "Fira Code Retina" :size 36)
      doom-variable-pitch-font (font-spec :family "Fira Code Retina" :size 24)
      doom-serif-font (font-spec :family "Fira Code Retina" :weight 'light))
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative
      display-line-numbers-current-absolute t)

(setq auto-save-default t
      make-backup-files t)

(add-hook 'vue-mode-hook #'lsp!)

(setq-default dotspacemacs-configuration-layers
  '((shell :variables shell-default-term-shell "/bin/fish")))
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

(map! :after magit "C-c C-g" #'magit-statuS)

;; Custom keybindings for cursor jumping between windows
(map! :desc "Move cursor into down window"
      "M-j" #'evil-window-down)
(map! :desc "Move cursor into up window"
      "M-k" #'evil-window-up)
(map! :desc "Move cursor into window at left"
      "M-h" #'evil-window-left)
(map! :desc "Move cursor into window at right"
      "M-l" #'evil-window-right)

(map! :desc "Move window down"
      "M-J" #'+evil/window-move-down)
(map! :desc "Move window up"
      "M-K" #'+evil/window-move-up)
(map! :desc "Move window right"
      "M-L" #'+evil/window-move-right)
(map! :desc "Move window left"
      "M-H" #'+evil/window-move-left)

;;Close window
(map! :desc "Delete window"
      "M-w" #'evil-window-delete)

;;Format code in active buffer
(map! :leader
      "c f" #'lsp-format-buffer)

;;(package! iedit)
;;(use-package! iedit
;;  :defer
;;  :config
;;  set-face-background 'iedit-occurence "Magenta"
;;  :bind
;;  ("C-;" . iedit-mode))
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
