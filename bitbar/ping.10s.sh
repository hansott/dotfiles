#!/bin/bash

# This is a plugin of Bitbar
# https://github.com/matryer/bitbar
# It shows current ping to some servers at the top Menubar
# This helps me to know my current connection speed
#
# Author: trungdq88@gmail.com

exec 2>/dev/null

if ping_result=`ping -c 1 google.com`; then
    ping_google=$(echo $ping_result | awk -F '/' 'END {printf "%d\n", $5}')
else
    ping_google=-1
fi

avg=$(( ($ping_google)/1 ))

color="#cc3b3b"

if (( $avg < 1000 )) ; then
    color="#cc673b"
fi

if (( $avg < 600 )) ; then
    color="#ce8458"
fi

if (( $avg < 300 )) ; then
    color="#bbbc55"
fi

if (( $avg < 100 )) ; then
    color="#59b86d"
fi

if (( $avg < 50 )) ; then
    color="#e506ff"
fi

if (( $avg == 0 )) ; then
    color="#acacac"
fi

if (( $avg < 0 )); then
    color="#ff0000"
fi

echo "$avg ms | color=$color size=12"
echo "---"
echo "Google: $ping_google ms"
