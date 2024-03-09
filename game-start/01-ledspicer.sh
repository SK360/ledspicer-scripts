#!/bin/sh
if test -f /tmp/.emitterpause
then
  exit 0
fi

system="${1}"
romPath="${2}"
gameName="${3}"

romPath=$(basename "${romPath}")
romName="${romPath%.*}"

if grep -q "\\[$romName\\]" /userdata/system/configs/ledspicer/colors.ini;
then
    system="arcade";
fi

emitter -r -c /userdata/system/configs/ledspicer/ledspicer.conf LoadProfileByEmulator "$romName" "$system"