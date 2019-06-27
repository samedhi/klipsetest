#!/bin/bash

porcelain=$(git status --porcelain)

if [ -n "$porcelain" ]
then
    echo "PLEASE COMMIT YOUR CHANGE FIRST!!!"
    exit 1
fi

branch=$(git branch | grep -e "^*" | cut -d' ' -f 2)
lein run
cp -r public/blog/* ~/firemore-docs
# git add .
# git commit -m "AUTO COMMIT"
# git push
# git checkout $branch
