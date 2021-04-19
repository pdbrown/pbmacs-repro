# pbmacs-repro

This Emacs configuration makes it easy to reproduce bugs in 3rd party packages
using [straight.el](https://github.com/raxod502/straight.el) as the package
manager.

## Get and run it

```bash
git clone https://github.com/pdbrown/pbmacs-repro
cd pbmacs-repro
git submodule init && git submodule update
emacs -Q --load init.el
```

## straight.el

### Install packages

Once `init.el` is loaded, install a package and its dependencies with, for example:
```
M-x straight-use-package RET cider RET
```

### Lockfile

Straight clones requested packages to `./straight/repos`. Write a
lockfile to record exact versions with
```
C-u M-x straight-freeze-versions
```
The lockfile is written to `./straight/versions/default.el`. If a lockfile is
present, straight will install listed versions instead of the latest.

## Layout

```
.                        ; user-emacs-directory
├── init.el
├── README.md
└── straight
    ├── repos
    │   ├── straight.el  ; submodule
    │   │   └── ...
    │   └── ...          ; 3rd party packages once installed
    └── versions
        └── default.el   ; lockfile if present
```
