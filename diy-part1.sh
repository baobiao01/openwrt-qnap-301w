#!/bin/bash
set -e

# 固定内核 6.6
sed -i 's|^KERNEL_PATCHVER.*|KERNEL_PATCHVER:=6.6|' target/linux/qualcommax/Makefile

# 加入 nss-packages
echo "src-git nss_packages https://github.com/qosmio/nss-packages.git;main_nss_wifi" >> feeds.conf.default

# 替换 mac80211 为 qosmio NSS 版本（WiFi offload）
rm -rf package/kernel/mac80211
git clone https://github.com/qosmio/mac80211-nss.git package/kernel/mac80211
