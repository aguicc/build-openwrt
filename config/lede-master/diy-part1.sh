#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 先删除 feeds.conf.default 里已有的 helloworld 相关行，避免重复添加
sed -i "/helloworld/d" "feeds.conf.default"

# 添加 helloworld 源
echo "" >> "feeds.conf.default"


# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

