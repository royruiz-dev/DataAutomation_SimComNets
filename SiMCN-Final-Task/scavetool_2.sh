#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_1_throughput.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_2_throughput.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_3_throughput.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_5_throughput.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_6_throughput.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_7_throughput.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_8_throughput.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_9_throughput.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_10_throughput.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_11_throughput.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/HTTP_Clients_12_throughput.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_1_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_2_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_3_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_5_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_6_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_7_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_8_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HHTTP_Clients_9_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Clients_10_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Clients_11_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/HTTP_Clients_12_packetDropQueueOverflow_count.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_1_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_2_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_3_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_5_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_6_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_7_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_8_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_9_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_10_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_11_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*.LISPRouter.ppp.*) AND name(queueLength:timeavg)' -o results/HTTP_Clients_12_queueLength_timeavg.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_1_packetDrop_count.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_2_packetDrop_count.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_3_packetDrop_count.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_5_packetDrop_count.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_6_packetDrop_count.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_7_packetDrop_count.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_8_packetDrop_count.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_9_packetDrop_count.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_10_packetDrop_count.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_11_packetDrop_count.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/HTTP_Clients_12_packetDrop_count.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_1_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_2_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_3_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_5_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_6_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_7_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_8_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_9_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_10_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_11_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/HTTP_Clients_12_AVG_PK_LOSS_Rate.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_1_LATE_Packets.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_2_LATE_Packets.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_3_LATE_Packets.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_5_LATE_Packets.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_6_LATE_Packets.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_7_LATE_Packets.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_8_LATE_Packets.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_9_LATE_Packets.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_10_LATE_Packets.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_11_LATE_Packets.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/HTTP_Clients_12_LATE_Packets.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_1_LOST_Packets.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_2_LOST_Packets.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_3_LOST_Packets.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_5_LOST_Packets.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_6_LOST_Packets.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_7_LOST_Packets.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_8_LOST_Packets.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_9_LOST_Packets.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_10_LOST_Packets.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_11_LOST_Packets.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/HTTP_Clients_12_LOST_Packets.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_1_SENT_Packets.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_2_SENT_Packets.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_3_SENT_Packets.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_5_SENT_Packets.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_6_SENT_Packets.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_7_SENT_Packets.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_8_SENT_Packets.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_9_SENT_Packets.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_10_SENT_Packets.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_11_SENT_Packets.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/HTTP_Clients_12_SENT_Packets.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_1_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_2_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_3_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_5_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_6_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_7_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_8_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_9_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_10_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_11_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/HTTP_Clients_12_RCVD_Packets.csv -F CSV-S results/HTTP_Clients_12-*.sca


scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_1_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_2_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_3_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_5_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_6_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_7_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_8_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_9_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_10_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_11_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/HTTP_Clients_12_AVG_E2E_Delay.csv -F CSV-S results/HTTP_Clients_12-*.sca
