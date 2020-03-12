#/usr/bin/bash

emacs -batch -Q -l ~/.linux/dots/emacs/agenda.el -eval '(org-batch-agenda "a" org-agenda-span 1)' 
