#!/bin/sh
echo "delete file ..."
killall checker
rm -rf ~/.ycpedef_checker_buffer/
rm -rf ~/.ycpedef_checker_source
mkdir -p ~/.ycpedef_checker_source
mkdir -p ~/.ycpedef_checker_buffer

echo "download file ..."
cd ~/.ycpedef_checker_buffer
wget https://gitee.com/yuanchenpu/checker/repository/archive/master.zip
unzip master.zip
cp -r checker/ ~/.ycpedef_checker_source
cd ~/.ycpedef_checker_source

echo "move file ..."
if [ -f ~/.ycpedef_checker_source/copy.sh ]; then
    ~/.ycpedef_checker_source/copy.sh
fi

