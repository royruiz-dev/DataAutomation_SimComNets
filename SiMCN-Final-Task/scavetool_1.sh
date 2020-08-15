#!/bin/bash

scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(throughput:last)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(packetDropQueueOverflow:count)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*.ppp.*) AND name(queueLength:timeavg)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name(packetDrop:count)' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] AVG PK LOSS Rate")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LATE Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total LOST Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total SENT Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Total RCVD Packets")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca

scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_FTP_Only.csv -F CSV-S results/VC_with_FTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_HTTP_Only.csv -F CSV-S results/VC_with_HTTP_Only-*.sca
scavetool export  -f 'module(*) AND name("[VC] Avg End-to-End Delay")' -o results/VC_with_FTP_and_HTTP.csv -F CSV-S results/VC_with_FTP_and_HTTP-*.sca
