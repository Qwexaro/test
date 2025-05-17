read -p "decide branch for rewrite code in current branch: " branch

git merge "$branch"

git branch -d "$branch"

git push origin --delete "$branch"

exit 0
