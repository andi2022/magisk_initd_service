#!/system/bin/sh
# Init.d support
INITPATH=system/etc/init.d
sleep 5

if [ ! -d $INITPATH ] ; then
    mount -o remount,rw /
    mkdir $INITPATH
    chmod 755 $INITPATH
    chmod 755 $INITPATH/*
    mount -o remount,ro /
fi
busybox run-parts $INITPATH
