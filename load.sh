#!/bin/sh
make -j8
sudo rmmod ./88x2bu.ko
sudo insmod ./88x2bu.ko rtw_power_mgnt=0 rtw_ips_mode=0
