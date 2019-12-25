#!/bin/bash

# see https://github.com/cmus/cmus/issues/233

cmus-remote -C clear
cmus-remote -C "add ~/Music"
cmus-remote -C "update-cache -f"
