#!/bin/bash

# see https://github.com/cmus/cmus/issues/233

if cmus-remote -Q &>/dev/null ; then
   cmus-remote -C clear
   cmus-remote -C "add ~/Music"
   cmus-remote -C "update-cache -f"
else
   echo Start cmus first. 
fi
