#/bin/sh

VENDOR=acer
DEVICE=a200

OUTD=../../../vendor/$VENDOR/$DEVICE
PROPD=$OUTD/proprietary

rm -rf $OUTD/*


mkdir -p $OUTD 
mkdir -p $PROPD

while read file; do
    dir=$PROPD/$(dirname $file)
    mkdir -p $dir
    #adb pull /system/$file $PROPD/$file
    cp /home/pieter/android/theanswer/system/$file $PROPD/$file
done < proprietary-files.txt

./setup-makefiles.sh
