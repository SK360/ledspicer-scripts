#!/bin/sh
if test -f /tmp/.emitterpause
then
  exit 0
fi

system="${1}"

emitter -r -c /userdata/system/configs/ledspicer/ledspicer.conf LoadProfile "$system"