#!/bin/sh

BASE=../../../vendor/htc/shooterk/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE ]; then
    mkdir -p $BASE
  fi
  adb pull system/$FILE $BASE/system/$FILE
done

./setup-makefiles.sh
