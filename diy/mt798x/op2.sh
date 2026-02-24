#!/bin/bash
#=================================================
# DaoDao's script
#=================================================             


##配置IP
#sed -i 's/192.168.6.1/192.168.5.1/g' package/base-files/files/bin/config_generate

##New WiFi
sed -i "s/ImmortalWrt-2.4G/ASUS/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "s/ImmortalWrt-5G/ASUS_5G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

# 修改 2.4GHz 和 5GHz 的加密方式及密码
sed -i '/set wireless.default_${dev}\.encryption=none$/{s/none/sae-mixed/;a\\t\t\t\t\tset wireless.default_${dev}.key=Dsa78963
}' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
