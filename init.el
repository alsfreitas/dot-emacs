;; We can't tangle without org!
(require 'org)
;; Open the configuration
(find-file (concat user-emacs-directory "loader.org"))
;; tangle it
(org-babel-tangle)
;; load it
(load-file (concat user-emacs-directory "loader.el"))
;; finally byte-compile it
(byte-compile-file (concat user-emacs-directory "loader.el"))
