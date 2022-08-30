#!/usr/bin/env sh
###
 # @Author: SoChichung
 # @Date: 2022-08-30 22:29:38
 # @LastEditors: SoChichung
 # @LastEditTime: 2022-08-30 22:42:54
 # @Description: 
 # 
 # Copyright (c) 2022 by SoChichung ddeadwings@gmail.com, All Rights Reserved. 
### 

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:SoChiChung/Chichung-blog.git master

cd -