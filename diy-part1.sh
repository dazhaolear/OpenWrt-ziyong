#!/bin/bash
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >>feeds.conf.default  
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git MrH723 https://github.com/MrH723/openwrt-packages' >>feeds.conf.default
#cd openwrt
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-netdata
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#取消bootstrap为默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#修改bootstrap主题为argon主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# Add a feed source
git clone https://github.com/siropboy/sirpdboy-package package/sirpdboy-package

#git clone https://github.com/kenzok8/small.git /package/small
git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff #关机
# Add Onliner
# git clone https://github.com/rufengsuixing/luci-app-onliner.git feeds/luci/applications/luci-app-onliner
git clone https://github.com/rufengsuixing/luci-app-onliner.git package/luci-app-onliner
#argon管理
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#应用管理
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
#文件管理
git clone https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
#高级重启
git clone https://github.com/dazhaolear/luci-app-autorebootnew.git package/luci-app-autorebootnew
#网速测试
git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest
