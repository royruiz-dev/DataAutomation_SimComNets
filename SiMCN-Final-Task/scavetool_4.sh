#!/bin/bash

scavetool export  -f 'module(*.Student.*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_6_Student_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_6-*.vec
scavetool export  -f 'module(*.Professor.*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_6_Professor_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_6-*.vec
scavetool export  -f 'module(*.Student.*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_7_Student_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_7-*.vec
scavetool export  -f 'module(*.Professor.*) AND name("[VC] End-to-End Delay")' -o results/HTTP_Clients_7_Professor_E2E_Delay_Vector.csv -F CSV-S results/HTTP_Clients_7-*.vec
