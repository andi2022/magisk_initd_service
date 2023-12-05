# atv magisk init.d service

This script is a dirty sollution to enable init.d support on some broken android rom's.

Connect with adb and run the following command to download and install the script.


```
su -c '/system/bin/curl -L -o /data/adb/service.d/initd.sh -k -s https://raw.githubusercontent.com/andi2022/magisk_initd_service/master/initd.sh && \
chmod +x /data/adb/service.d/initd.sh && \
reboot'
```
After the android devices is rebooted, the script should created the init.d folder in /etc and run everything that you will put in the init.d folder.

Tested with the cs5 rom for TX9S Android TV's.
Android 9.0
https://github.com/comstud/atvroms/tree/master/tx9s
