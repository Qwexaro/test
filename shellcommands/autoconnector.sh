#!/bin/bash

read -p "hello! Define remote repository for gonna be connection your project (example: https://github.com/Name/Project.git): " remoteRepo

read -p "Choose name for commit: " commitRepo

read -p "Your default branch: " defaultBranch

read -p "Remove this installer script at the end?(Y/N): " uninstaller

git init

git remote add origin "$remoteRepo"

git status

git add .

git status

git commit -m "$commitRepo"

git push -u origin "$defaultBranch"

if [ "$uninstaller" == "Y" ] then
	rm autoconnector.sh
else
	echo "okey, have nice day!"
fi

exit 0
