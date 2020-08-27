#!/bin/bash

scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_1_queueLength_max.csv -F CSV-S results/HTTP_Clients_1-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_2_queueLength_max.csv -F CSV-S results/HTTP_Clients_2-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_3_queueLength_max.csv -F CSV-S results/HTTP_Clients_3-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_5_queueLength_max.csv -F CSV-S results/HTTP_Clients_5-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_6_queueLength_max.csv -F CSV-S results/HTTP_Clients_6-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_7_queueLength_max.csv -F CSV-S results/HTTP_Clients_7-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_8_queueLength_max.csv -F CSV-S results/HTTP_Clients_8-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_9_queueLength_max.csv -F CSV-S results/HTTP_Clients_9-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_10_queueLength_max.csv -F CSV-S results/HTTP_Clients_10-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_11_queueLength_max.csv -F CSV-S results/HTTP_Clients_11-*.sca
scavetool export  -f '(module(*.AP.*ueue) AND name(queueLength:max)) OR (module(*Router.*) AND name(queueLength:max))' -o results/HTTP_Clients_12_queueLength_max.csv -F CSV-S results/HTTP_Clients_12-*.sca
