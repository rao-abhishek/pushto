#!/bin/bash

commitname=$1
branchname=$2

errors=""

# Check if the first argument is "help"
if [ "$1" = "help" ]; then
    echo "Usage: pushto COMMIT_NAME BRANCH_NAME"
    echo "  COMMIT_NAME    Specify the commit name"
    echo "  BRANCH_NAME    Specify the branch name"
    echo "Available commands:"
    echo "  pushto         Perform stash, apply, prettify, commit, and push actions"
    exit 0
fi

# Check if commitname is empty
if [ -z "$commitname" ]; then
    errors+="Error: Commit name is empty.\n"
fi

# Check if branchname is empty
if [ -z "$branchname" ]; then
    errors+="Error: Branch name is empty.\n"
fi

# Check if any errors occurred
if [ -n "$errors" ]; then
    echo -e "$errors"
    exit 1
fi

# Perform stash, apply, prettify, commit, and push actions

# Stash changes with the given commit name
git stash save "$commitname"

# Apply the stashed changes
git stash apply

# Run prettify command (assuming it is a valid command)
yarn run prettify

# Add changes to the staging area
git add .

# Commit the changes with the given commit name
git commit -m "$commitname"

# Push changes to the specified branch
git push origin "$branchname"

exit 0
