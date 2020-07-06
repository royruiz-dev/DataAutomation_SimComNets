#!/bin/bash


scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_06.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_06-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_07.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_07-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_08_PAIRS_300.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_08_PAIRS_300-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_09_PAIRS_1.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_09_PAIRS_1-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_scenario_10_Mixed.csv -F CSV-S results/VOIP_DSL_scenario_10_Mixed-*.sca

