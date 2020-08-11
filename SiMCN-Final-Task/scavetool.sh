#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] AVG PK LOSS Rate")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LATE Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total LOST Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total SENT Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04a.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04b.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VoIP] Total RCVD Packets")' -o results/HTTP_Client_Decrease_S05.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca
