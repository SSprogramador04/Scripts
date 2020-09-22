#!/bin/bash

exec ip link set wlp3s0 up & #Power on the wifi card.
exec wpa_supplicant -B -iwlp3s0 -c /etc/wifi.conf & #Execute wpa_supplicant.
exec dhcpcd wlp3s0 #Request a ip direction.
