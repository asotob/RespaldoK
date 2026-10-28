#!/bin/sh
# mkdir ./Architecture
# cd ./Architecture
cp -R "../MEA Folder Template/Architecture" .
read -p "Please enter move event (MEAxxx): " ME
if [ -z "$ME" ]
then
    echo "Move event entry cannot be blank."
    exit 1
fi

cd ./Architecture
mv ./'ANT-MEAxxx-Servers.(xls*)' ./'ANT-$ME-Servers.xls$1'
mv ./'F5-Request/ANT-MEAxxx-LB.(xls.*)' ./'ANT-$ME-LB.xls$1'
mv ./'FW-Request/Firewall-NET-Request-Anthem-MEAxxx-yyyymmdd-hhmmss.(xls*)' ./'Firewall-NET-Request-Anthem-$ME-yyyymmdd-hhmmss.xls$1'
mv ./'RAID-Log/MEAxxx-RAIDLog.(xls*)' ./'$ME-RAIDLog.xls$1'
mv ./'Web-Cont-Filt/ANT-MEAxxx-WebContentFiltering.csv' ./'ANT-$ME-WebContentFiltering.csv'
