#!/bin/bash

read -p "please, decide branch for push remote repository: " branch

git status

git add .

git status

git commit -m "Main"

git push -u origin "$branch"

exit 0
