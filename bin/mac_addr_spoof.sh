#!/bin/bash
OS=$(uname -s)

if [ $OS == "Darwin" ]; then
    echo "Spoofing on macOS"
    OLD_MAC=$(ifconfig en0 ggrep -P '(([A-Za-z0-9]{2})?:){5}[A-Za-z0-9]{2}' --color -o)
    SPOOF_MAC=$OLD_MAC

    while [ "$SPOOF_MAC" == "$OLD_MAC" ]; do
        sudo ifconfig en0 ether $(openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%')
        SPOOF_MAC=$(ifconfig | grep -A 1 en0: | ggrep -P '(([A-Za-z0-9]{2})?:){5}[A-Za-z0-9]{2}' --color -o)
    done
fi

echo "Spoofed MAC Address: ${SPOOF_MAC}"
