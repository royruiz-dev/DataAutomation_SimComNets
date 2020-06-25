#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_06 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_07 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_08_PAIRS_300 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_09_PAIRS_1 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_scenario_10_Mixed -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
