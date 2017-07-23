#!/bin/sh
# We found some routers where wifi-device radio0 was disabled by button press - so we fix this condition
r0=$(uci get wireless.radio0.disabled) 2>/dev/null

# if r0 is disabled why ever..
if [ $r0 = '1' ]; then
        uci set wireless.radio0.disabled=0
        logger "PROBLEM DETECTED: wireless.radio0.disabled was $r0 - setting to 0"
        wifi
fi
