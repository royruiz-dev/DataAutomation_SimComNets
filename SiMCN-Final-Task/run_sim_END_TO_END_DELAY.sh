#!/bin/bash
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Clients_6 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Clients_7 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini