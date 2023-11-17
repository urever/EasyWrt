#!/bin/bash
#=================================================
# DaoDao's script 
#=================================================
##添加自己的插件库
echo -e "\nsrc-git extraipk https://github.com/xiangfeidexiaohuo/extra-ipk" >> feeds.conf.default
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
