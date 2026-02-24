#!/bin/bash
#=================================================
# DaoDao's script 
#=================================================
##添加自己的插件库
sed -i "1isrc-git 2305ipk https://github.com/xiangfeidexiaohuo/2305-ipk\n" feeds.conf.default
sed -i "2isrc-git oaf https://github.com/jjm2473/OpenAppFilter.git;dev7\n" feeds.conf.default
sed -i "3isrc-git jjm2473_apps https://github.com/jjm2473/openwrt-apps.git;main\n" feeds.conf.default
