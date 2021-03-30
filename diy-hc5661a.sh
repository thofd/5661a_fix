#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
#设置files目录权限
chmod -R 755 files
# 修改默认IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate
#2.修改默认主机名
sed -i 's/OpenWrt/HC5661A/g' package/base-files/files/bin/config_generate
#sed -i 's/root:$1$ZxXjr/8S$gS4ClQTeJuNssAsXuJoQ.0:18435:0:99999:7:::/g' /etc/shadow
#3.修改默认密码
sed -i '!root::0:0:99999:7:::!root:$1$WWdfWplo$F3cJ4znR/4yRSrgNtHk8m1:0:0:99999:7:::!g' /etc/shadow
#4.版本号里显示一个自己的名字
#sed -i "s/OpenWrt /Lunseil build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-setting/files/zzz-default-setting
#5.修改插件名字
#sed -i 's/"Turbo Acc 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-ch/sfe.po
#6.修改上游DNS
#sed -i "2i # network config" package/lean/default-setting/files/zzz-default-setting
#sed -i "3i uci set network.lan.dns='10.10.10.2'" package/lean/default-setting/files/zzz-default-setting
