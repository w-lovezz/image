#!/bin/bash

# 检查是否提供了文件名参数
if [ $# -ne 1 ]; then
    echo "请输入要提交的文件名作为参数！"
    echo "用法: ./commit_and_push.sh 文件名"
    exit 1
fi

# 文件名作为参数
filename=$1

# 提交变更
git add $filename
git commit -m "Add $filename"

# 推送到远程仓库
git push origin main

