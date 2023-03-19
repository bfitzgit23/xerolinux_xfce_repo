#!/bin/bash

mv .git/config config
mv .git/HEAD HEAD

rm -rf .git

git init -b main

mv config .git/config
mv HEAD .git/HEAD

git add --all .

git commit -m "monthly cleanup"

git push origin main --force

echo "################################################################"
echo "###################    cleanup  Done      ######################"
echo "################################################################"
