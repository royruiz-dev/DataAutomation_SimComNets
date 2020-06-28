#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_05_PAIRS_5 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt10_scenario_05_PAIRS_5 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
