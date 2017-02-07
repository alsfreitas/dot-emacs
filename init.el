;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(if (file-exists-p (concat user-emacs-directory "loader.el"))
  (load-file (concat user-emacs-directory "loader.el"))
  (progn
    ;; We can't tangle without org!
    (require 'org)
    ;; Open the configuration
    (find-file (concat user-emacs-directory "loader.org"))
    ;; tangle it
    (org-babel-tangle)
    ;; finally byte-compile it
    (byte-compile-file (concat user-emacs-directory "loader.el"))
    ;; then loads the tangled file
    (load-file (concat user-emacs-directory "loader.el"))))

