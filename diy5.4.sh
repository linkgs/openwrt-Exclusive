#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
rm -rf ./package/lean/luci-theme-argon
#git clone https://github.com/firker/diy-ziyong package/diy-ziyong
#sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git szpkge https://github.com/281677160/openwrt-package' feeds.conf.default
#git clone https://github.com/281677160/openwrt-package.git package/szpkge

#1225 link firker
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
rm -rf ./package/luci-theme-edge
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
rm -rf ./package/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
git clone https://github.com/ledewrt/luci-app-ledeproxy.git package/luci-app-ledeproxy
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
svn co https://github.com/firker/diy-ziyong/trunk/smartdns package/smartdns
#svn co https://github.com/firker/diy-ziyong/trunk/smartdns package/smartdns

#git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
#git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
# git clone https://github.com/esirplayground/luci-app-poweroff.git package/poweroff
#git clone https://github.com/linkgs/luci-app-poweroff.git package/luci-app-poweroff
#git clone https://github.com/netdata/netdata.git package/netdata

#svn co https://github.com/sirpdboy/sirpdboy-package/luci-theme-argon_new package/luci-theme-argon_new
# mv -vf ../mt7621_phicomm_k2p.dts ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon


