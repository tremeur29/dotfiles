#/usr/bin/bash

emacs26 -batch -Q -l ~/.emacs.d/agenda.el -eval '(org-batch-agenda "a" org-agenda-span 1)' 
