#!/bin/bash
opp_runall -j$(nproc) -b8 ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_ISDN_rpt30_scenario_01 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_ISDN_rpt03_scenario_01 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_ISDN_rpt10_scenario_01 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
