#!/bin/bash
#=================================================
# DaoDao's script 
#=================================================
##添加自己的插件库
src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main
src-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git;main
echo -e "\nsrc-git extraipk https://github.com/xiangfeidexiaohuo/extra-ipk" >> feeds.conf.default
