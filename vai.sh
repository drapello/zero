#!/bin/bash
git add $(git ls-files)
git commit -m "all" 
git push
cap deploy