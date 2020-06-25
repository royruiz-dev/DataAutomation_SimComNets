#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_DSL_rpt03_scenario_02 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_DSL_rpt10_scenario_02 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c NO_VOIP_DSL_rpt30_scenario_02 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
