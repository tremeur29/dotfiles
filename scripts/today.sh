#/usr/bin/bash

emacs -batch -Q -l ~/.emacs.d/agenda.el -eval '(org-batch-agenda "a" org-agenda-span 1)' 
