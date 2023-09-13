#!/bin/bash

wget https://manageit.s3.ir-thr-at1.arvanstorage.ir/chr-7.11.2.img.zip -O chr.img.zip  && \
gunzip -c chr.img.zip > chr.img  && \
echo u > /proc/sysrq-trigger && \
dd if=chr.img bs=1024 of=/dev/sda && \
echo "sync disk" && \
echo s > /proc/sysrq-trigger && \
echo "Sleep 15 seconds" && \
sleep 15 && \
echo "Ok, reboot" && \
echo b > /proc/sysrq-trigger
