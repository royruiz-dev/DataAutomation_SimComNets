#!/bin/bash


scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_03_PAIRS_300.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_03_PAIRS_300-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_04_A_PAIRS_150.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_04_A_PAIRS_150-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_04_B_PAIRS_5.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_04_B_PAIRS_5-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_05_A_PAIRS_100.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_05_A_PAIRS_100-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_05_B_PAIRS_5.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_05_B_PAIRS_5-*.sca
