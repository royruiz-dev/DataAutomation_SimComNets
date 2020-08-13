#!/bin/bash
# opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c [CONFIG_NAME] -r [REPEAT VALUE AS 0..X] -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src final-task-2020-common-ini-file.ini
# These scenarios include FTP Upload Student, HTTP Clients, and Video Conferencing

opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Increase_S04a_repeat10 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Increase_S04a_repeat30 -r 0..29 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini

opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Increase_S04b_repeat10 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Increase_S04b_repeat30 -r 0..29 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini

opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Decrease_S05_repeat10 -r 0..9 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c HTTP_Client_Decrease_S05_repeat30 -r 0..29 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
