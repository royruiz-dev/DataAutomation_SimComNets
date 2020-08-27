#!/bin/bash

scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_6_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_3_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(FinalTask.AP.wlan[0].mac.dcf.channelAccess.pendingQueue) AND name(queueLength:max)' -o results/HTTP_Clients_10_AP_PendingQueue.csv -F CSV-S results/HTTP_Clients_10-*.sca

scavetool export  -f 'module(FinalTask.AP.eth[0].mac.queue) AND name(queueLength:max)' -o results/HTTP_Clients_6_AP_PendingQueue_student.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(FinalTask.AP.eth[0].mac.queue) AND name(queueLength:max)' -o results/HTTP_Clients_3_AP_PendingQueue_student.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(FinalTask.AP.eth[0].mac.queue) AND name(queueLength:max)' -o results/HTTP_Clients_10_AP_PendingQueue_student.csv -F CSV-S results/HTTP_Clients_10-*.sca

