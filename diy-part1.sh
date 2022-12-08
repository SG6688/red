#!/bin/bash
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

#sed -i '$a src-git small https://github.com/Thanf-code/small-package' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small-package' feeds.conf.default
#sed -i '$a src-git small https://github.com/kiddin9/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/281677160/openwrt-package' feeds.conf.default

#sed -i '$a src-git immortalwrt https://github.com/immortalwrt/packages.git;openwrt-21.02' feeds.conf.default
#git clone https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced
#git clone https://github.com/whengrun/luci-app-turboacc package/luci-app-turboacc

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default



#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall

#git clone -b master --single-branch https://github.com/LGA1150/openwrt-fullconenat package/fullconenat
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

mkdir -p package/helloworld
for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do \
  svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "package/helloworld/$i"; \
done
svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
svn checkout https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx

git clone https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced


#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#sed -i 's/PATCHVER:=5.10/PATCHVER:=5.15/g' target/linux/ramips/Makefile
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' target/linux/ramips/Makefile
