;; Set emacs dir to parent of this `init.el' file.
(setq user-emacs-directory (file-name-directory load-file-name))

;; Tell straight.el to install packages at ./straight.
(setq straight-base-dir (expand-file-name user-emacs-directory))

;; Bootstrap straight.el.
(load (expand-file-name "straight/repos/straight.el/bootstrap.el"
                        straight-base-dir))
