#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_03_PAIRS_300 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_04_A_PAIRS_150 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_04_B_PAIRS_5 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_05_A_PAIRS_100 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c VOIP_DSL_rpt03_scenario_05_B_PAIRS_5 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
  

  