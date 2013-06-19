#!/bin/bash
git add $(git ls-files)
git commit -m "shell" 
git push
cap deploy