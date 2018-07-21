#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Since I am making changes to "hugo-blog", I need to "git add" & "git commit" then
# "git push origin master", befre updating the main blog website
git commit -am "updated content"
git push origin master

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
