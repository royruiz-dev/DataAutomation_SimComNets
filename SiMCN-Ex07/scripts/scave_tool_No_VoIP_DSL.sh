#!/bin/bash

scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_DSL_rpt03_scenario_02_throughput.csv -F CSV-S results/NO_VOIP_DSL_rpt03_scenario_02-*.sca
scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_DSL_rpt10_scenario_02_throughput.csv -F CSV-S results/NO_VOIP_DSL_rpt10_scenario_02-*.sca
scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/NO_VOIP_DSL_rpt30_scenario_02_throughput.csv -F CSV-S results/NO_VOIP_DSL_rpt30_scenario_02-*.sca
