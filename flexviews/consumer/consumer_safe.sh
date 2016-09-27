#!/bin/bash

while true
do
  php run_consumer.php --pid=flexcdc.pid $* 2>&1 >> flex_cdc_log.log
  if [ $? -eq 0 ]; then
    exit 0
  fi
  sleep 1
done
