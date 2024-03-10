#!/bin/sh
if test -f /tmp/.emitterpause
then
  exit 0
fi

system="${1}"

if [[ "$system" == "mame" || "$system" == "fbneo" ]];
then
    system="arcade";
fi

emitter -r -c /userdata/system/configs/ledspicer/ledspicer.conf LoadProfile "$system"