#!/bin/bash

opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c DSL03_for_Internet -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c ISDN_for_VoIP_and_Internet_Worse_Case -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Ex07 -u Cmdenv -c DSL_for_VoIP_and_Internet_Worse_Case -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini