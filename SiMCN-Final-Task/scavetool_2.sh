#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca
