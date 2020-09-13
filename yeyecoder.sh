#!/bin/bash

# Author: ancienyeye-CEO
# description: "a script to push new code to github "

yum updates -y

git status
echo "changes have been made"

git add .
echo "changes have been added"

git commit -m " whatever would be chnaging"
echo "changes have been committed"

git push
echo "changes have been pushed"

fi
