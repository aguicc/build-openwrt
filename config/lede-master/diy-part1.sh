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
#sed -i "/helloworld/d" "feeds.conf.default"

# 添加 helloworld 源
echo "src-git packages https://github.com/coolsnowwolf/packages" >> "feeds.conf.default"
echo "#src-git luci https://github.com/coolsnowwolf/luci" >> "feeds.conf.default"
echo "src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-23.05" >> "feeds.conf.default"
echo "src-git routing https://github.com/coolsnowwolf/routing" >> "feeds.conf.default"
echo "src-git telephony https://github.com/coolsnowwolf/telephony.git" >> "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
echo "#src-git oui https://github.com/zhaojh329/oui.git" >> "feeds.conf.default"
echo "#src-git video https://github.com/openwrt/video.git" >> "feeds.conf.default"
echo "#src-git targets https://github.com/openwrt/targets.git" >> "feeds.conf.default"
echo "#src-git oldpackages http://git.openwrt.org/packages.git" >> "feeds.conf.default"
echo "src-link custom /usr/src/openwrt/custom-feed" >> "feeds.conf.default"


# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

