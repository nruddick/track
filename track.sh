#!/bin/bash

device="SynPS/2 Synaptics TouchPad"
state=`xinput list-props "$device" | grep 'Device Enabled (139):' | grep -o "[0$]"`

if [[ "$state" == '0' ]];then
  xinput enable "$device"
  echo "Trackpad Enabled"
elif
  [[ "$state" != '0' ]];then
  xinput disable "$device"
  echo "Trackpad Disabled"
fi


