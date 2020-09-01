#!/bin/bash
# opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c [CONFIG_NAME] -r [REPEAT VALUE AS 0..X] -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src final-task-2020-common-ini-file.ini
# These scenarios include FTP Upload Student, HTTP Clients, and Video Conferencing

opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c VDSL_UpBW_Decrease_S01 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c ADSL_DownBW_SlightIncrease_S02 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c ADSL_DownBW_MajorIncrease_S03 -r 0..2 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
