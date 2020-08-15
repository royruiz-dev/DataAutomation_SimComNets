#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04a_throughput.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Increase_S04b_throughput.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Client_Decrease_S05_throughput.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04a_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Increase_S04b_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Client_Decrease_S05_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04a_queueLength_timeavg.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Increase_S04b_queueLength_timeavg.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Client_Decrease_S05_queueLength_timeavg.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04a_packetDrop_count.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Increase_S04b_packetDrop_count.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Client_Decrease_S05_packetDrop_count.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04a_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Increase_S04b_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Client_Decrease_S05_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Increase_S04a_LATE_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Increase_S04b_LATE_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Client_Decrease_S05_LATE_Packets.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Increase_S04a_LOST_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Increase_S04b_LOST_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Client_Decrease_S05_LOST_Packets.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Increase_S04a_SENT_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Increase_S04b_SENT_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Client_Decrease_S05_SENT_Packets.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04a_RCVD_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Increase_S04b_RCVD_Packets.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Client_Decrease_S05_RCVD_Packets.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca

scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Increase_S04a_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Client_Increase_S04a-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Increase_S04b_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Client_Increase_S04b-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Client_Decrease_S05_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Client_Decrease_S05-*.sca
