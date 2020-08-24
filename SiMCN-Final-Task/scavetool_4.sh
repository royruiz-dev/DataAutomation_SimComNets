#!/bin/bash

scavetool export  -f 'module(*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_6_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_6-*.vec
scavetool export  -f 'module(*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_7_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_7-*.vec
