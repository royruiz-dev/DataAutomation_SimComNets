#!/bin/bash


scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_06_PAIRS_20_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_06_PAIRS_20-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt10_scenario_06_PAIRS_20_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt10_scenario_06_PAIRS_20-*.sca

scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_07_PAIRS_20_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_07_PAIRS_20-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt10_scenario_07_PAIRS_20_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt10_scenario_07_PAIRS_20-*.sca

scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_08_PAIRS_300_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_08_PAIRS_300-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt10_scenario_08_PAIRS_300_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt10_scenario_08_PAIRS_300-*.sca

scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt03_scenario_09_PAIRS_5_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt03_scenario_09_PAIRS_5-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_ISDN_rpt10_scenario_09_PAIRS_5_PK_Loss_Rate.csv -F CSV-S results/VOIP_ISDN_rpt10_scenario_09_PAIRS_5-*.sca

scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt03_scenario_10_MIXED_PK_Loss_Rate.csv -F CSV-S results/VOIP_DSL_rpt03_scenario_10_MIXED-*.sca
scavetool export  -f 'module(*.user[*].*) AND name("[VoIP] *")' -o results/VOIP_DSL_rpt10_scenario_10_MIXED_PK_Loss_Rate.csv -F CSV-S results/VOIP_DSL_rpt10_scenario_10_MIXED-*.sca

#scavetool export  -f 'module(net.server.app[0]) AND name("packetReceived:vector(packetBytes)")' -o results/General-ReceivedBytes.csv -F CSV-S results/General-*.vec
