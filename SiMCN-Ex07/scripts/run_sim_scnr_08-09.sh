#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_08_PAIRS_300 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt10_scenario_08_PAIRS_300 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt03_scenario_09_PAIRS_5 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_ISDN_rpt10_scenario_09_PAIRS_5 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
