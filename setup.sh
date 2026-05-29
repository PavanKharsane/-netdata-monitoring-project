#!/bin/bash

echo "Installing Netdata..."

wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh

sudo sh /tmp/netdata-kickstart.sh --non-interactive

echo "Netdata installation completed."

sudo systemctl enable netdata
sudo systemctl start netdata

sudo systemctl status netdata --no-pager
