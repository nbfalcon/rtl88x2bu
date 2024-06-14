#!/bin/sh
make -j8

# Remove normal driver
sudo rmmod rtw88_8822bu
sudo rmmod rtw88_8822b

# Insert our custom driver
sudo rmmod ./88x2bu.ko
sudo insmod ./88x2bu.ko rtw_power_mgnt=0 rtw_ips_mode=0 # rtw_monitor_fcsfail=1
