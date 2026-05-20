#!/bin/bash
set -e

FIRMWARE_DIR="/lib/firmware"
mkdir -p $FIRMWARE_DIR

# 下载 301W 所需 NSS 固件（admincomps.ru 官方固件提取）
wget https://openwrt.admincomps.ru/nss-wifi/firmware/qca-nss0.bin -O $FIRMWARE_DIR/qca-nss0.bin
wget https://openwrt.admincomps.ru/nss-wifi/firmware/qca-nss1.bin -O $FIRMWARE_DIR/qca-nss1.bin

chmod 644 $FIRMWARE_DIR/qca-nss*.bin
