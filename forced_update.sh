#!/bin/sh
echo "delete file ..."
rm -rf ~/.ycpedef_checker_source
mkdir -p ~/.ycpedef_checker_source
cd ~/.ycpedef_checker_source
echo "download file ..."
git init 1> /dev/null 2>&1
git remote add origin https://github.com/ycpedef/checker 1> /dev/null 2>&1
git pull origin master 1> /dev/null 2> /dev/null
echo "move file ..."
killall checker
if [ -f ~/.ycpedef_checker_source/copy.sh ]; then
    ~/.ycpedef_checker_source/copy.sh
fi
