#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate
#2.修改默认主机名
sed -i 's/OpenWrt/HC5661A/g' package/base-files/files/bin/config_generate

