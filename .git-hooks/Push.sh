echo "Pulling all the remote machines ..."
git branch -r | sed 's|origin/||'
echo "Select the machine branch , Copy and paste it ..."
read machine_branch

echo "Handling the Push Command ..."
echo "adding the Code to the main ..."
git add Code/*
git push origin main 
echo "Code Pushed Successfully ..."

if [ "$machine_branch" != "main" ]; then
    echo "Pushing the HW to the Machine branch ..."
    git add Machines/*
    git push origin machine_branch
fi

