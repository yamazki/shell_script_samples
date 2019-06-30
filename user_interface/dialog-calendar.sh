#!/bin/sh

LOG_DIR=/myapp/ap1/log

dialog --calendar "Select Date" 2 60 2> cal.tmp

data_str=${awk -F / 'print $3$2$1' cal.tmp}

if [ -z "$date_str" ]; then
  rm -f cal.tmp
  exit
fi

rm -i ${LOG_DIR}/app_log.$date_str

rm -f cal.tmp
