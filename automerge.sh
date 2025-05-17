echo "your current branches: "

git branch

read -p "enter name of branch for switched: " switch_branch

git checkout "$switch_branch"

echo "your current branch: "

git branch

read -p "decide branch for rewrite code in current branch: " branch

git merge "$branch"

git push -u origin "$switch_branch"

git branch -d "$branch"

git push origin --delete "$branch"

exit 0
