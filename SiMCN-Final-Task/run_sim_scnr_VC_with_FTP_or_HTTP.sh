#!/bin/bash
# opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c [CONFIG_NAME] -r [REPEAT VALUE AS 0..X] -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src final-task-2020-common-ini-file.ini

opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c VC_with_FTP_Only -r 0..49 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
opp_runall -j$(nproc) ./SiMCN-Final-Task -u Cmdenv -c VC_with_HTTP_Only -r 0..49 -n .:/fibus/fs2/19/cbh2268/workspace/inet4/src omnetpp.ini
