#!/bin/bash

scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_6_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_3_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_10_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_7_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_1_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_1-*.sca
