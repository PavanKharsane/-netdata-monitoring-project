#!/bin/bash

echo "Stopping Netdata..."

sudo systemctl stop netdata

echo "Removing Netdata..."

wget -O /tmp/netdata-uninstall.sh \
https://raw.githubusercontent.com/netdata/netdata/master/packaging/installer/netdata-uninstaller.sh

sudo bash /tmp/netdata-uninstall.sh --yes

echo "Cleanup completed."
