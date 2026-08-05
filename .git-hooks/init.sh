echo "Pulling all the remote machines ..."
git branch -r | sed 's|origin/||'
echo "Select the machine branch , Copy and paste it ..."
read machine_branch

git checkout main
git pull origin machine_branch
git checkout $machine_branch

