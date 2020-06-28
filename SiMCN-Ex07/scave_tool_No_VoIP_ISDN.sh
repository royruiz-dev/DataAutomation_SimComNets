#!/bin/bash

scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_ISDN_rpt03_scenario_01_throughput.csv -F CSV-S results/NO_VOIP_ISDN_rpt03_scenario_01-*.sca
scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_ISDN_rpt10_scenario_01_throughput.csv -F CSV-S results/NO_VOIP_ISDN_rpt10_scenario_01-*.sca
scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_ISDN_rpt30_scenario_01_throughput.csv -F CSV-S results/NO_VOIP_ISDN_rpt30_scenario_01-*.sca
