#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_Only_throughput.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_HTTP_Only_throughput.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_and_HTTP_throughput.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_Only_packetDropQueueOverflow_count.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_HTTP_Only_packetDropQueueOverflow_count.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_and_HTTP_packetDropQueueOverflow_count.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_Only_queueLength_timeavg.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_HTTP_Only_queueLength_timeavg.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_and_HTTP_queueLength_timeavg.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_Only_packetDrop_count.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_HTTP_Only_packetDrop_count.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_and_HTTP_packetDrop_count.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_FTP_Only_AVG_PK_LOSS_Rate.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_HTTP_Only_AVG_PK_LOSS_Rate.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_FTP_and_HTTP_AVG_PK_LOSS_Rate.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_FTP_Only_LATE_Packets.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_HTTP_Only_LATE_Packets.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_FTP_and_HTTP_LATE_Packets.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_FTP_Only_LOST_Packets.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_HTTP_Only_LOST_Packets.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_FTP_and_HTTP_LOST_Packets.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_FTP_Only_SENT_Packets.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_HTTP_Only_SENT_Packets.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_FTP_and_HTTP_SENT_Packets.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_FTP_Only_RCVD_Packets.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_HTTP_Only_RCVD_Packets.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_FTP_and_HTTP_RCVD_Packets.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_FTP_Only_AVG_E2E_Delay.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_HTTP_Only_AVG_E2E_Delay.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_FTP_and_HTTP_AVG_E2E_Delay.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
