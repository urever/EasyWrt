#!/bin/bash
#=================================================
# DaoDao's script
#=================================================             
####
echo -e "\nmsgid \"Control\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po
echo -e "msgstr \"控制\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po

echo -e "\nmsgid \"NAS\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po
echo -e "msgstr \"网络存储\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po

echo -e "\nmsgid \"VPN\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po
echo -e "msgstr \"魔法网络\"" >> feeds/luci/modules/luci-base/po/zh_Hans/base.po


##配置IP
sed -i 's/192.168.5.1/192.168.2.1/g' package/base-files/files/bin/config_generate
##取消bootstrap为默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile

##更改主机名
sed -i "s/hostname='.*'/hostname='AX6000'/g" package/base-files/files/bin/config_generate

cp -af feeds/2305ipk/patch/diy/banner  package/base-files/files/etc/banner

##New WiFi
sed -i "s/ImmortalWrt-2.4G/AX6000/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "s/ImmortalWrt-5G/AX6000_5G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh

# 修改 2.4GHz 和 5GHz 的加密方式及密码
sed -i '/set wireless.default_${dev}\.encryption=none$/{s/none/sae-mixed/;a\\t\t\t\t\tset wireless.default_${dev}.key=snoopy123321
}' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh


## golang
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang

## rust
rm -rf feeds/packages/lang/rust && git clone https://github.com/xiangfeidexiaohuo/extra-others && mv extra-others/rust feeds/packages/lang/
