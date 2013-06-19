#!/bin/bash
git add $(git ls-files)
git commit -m $1 
git push
cap deploy