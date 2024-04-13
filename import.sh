#!/usr/bin/bash

# Blobs Kanger script by SpiDyNub

# 1 = common | 0 = device tree
COMMON=1

DEVICE='device/xiaomi/lavender'
DEVICE_COMMON='device/xiaomi/sdm660-common'
VENDOR='vendor/xiaomi/lavender'
VENDOR_COMMON='vendor/xiaomi/sdm660-common'
DUMP='*/dump'

BLOBS=(
    ADSP
    Alarm
    Audio
    Bluetooth
    Configstore
    CDSP
    Charger
    DSP
    ESE
    IRQ
    Keymaster
    Media
    Peripheral
    QMI
    QSEEcom
    Sensors
    Thermal
    Time
)

if [ $COMMON = 1 ]; then
echo "# Not need for now" > proprietary-files.txt
cd -
cd $DEVICE_COMMON
./update-sha1sums.py
git add .
git commit -sm "sdm660-common: sync with vendor tree"
cd -
cd $DEVICE
else
echo "# Not need for now" $DEVICE_COMMON/proprietary-files.txt
fi

for i in "${BLOBS[@]}"
do
    ./extract-files.sh --section "${i}" -k ~/$DUMP
    cd -
    if [ $COMMON = 1 ]; then
    cd $VENDOR_COMMON
    git add .
    git commit -sm "sdm660-common: update ${i} from Zebra/helios/helios:13/13-22-18.00-TG-U02-STD-HEL-04/84:user/release-keys"
    cd -
    cd $DEVICE_COMMON
    ./update-sha1sums.py
    git add .
    git commit -sm "sdm660-common: update ${i} from Zebra/helios/helios:13/13-22-18.00-TG-U02-STD-HEL-04/84:user/release-keys"
    cd -
    cd $DEVICE
    else
    echo "already up to date"
    fi
done

cd $DEVICE
git stash
