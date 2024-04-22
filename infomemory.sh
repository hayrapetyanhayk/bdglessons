#!/bin/bash
while true; do
    echo ""
    echo "                            Disk usage in mb"
    echo ""
    free --mega
    sleep 3s
    echo "################################################################################"

    echo "                            Disk usage in gb"
    echo ""
    df -BG
    sleep 3s
    echo "################################################################################"

    echo "                            Disk usage in %"
    echo ""
    df -h -x tmpfs --output=source,pcent
    sleep 1m
done
