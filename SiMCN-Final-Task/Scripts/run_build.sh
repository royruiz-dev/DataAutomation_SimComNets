#!/bin/bash

cd ~/workspace/a-team-2/SiMCN-Final-Task
opp_makemake -f --deep -O out -KINET_PROJ=${HOME}/workspace/inet4 -DINET_IMPORT -I. -I$\(INET_PROJ\)/src -L$\(INET_PROJ\)/src -lINET$\(D\)
make MODE=release
./SiMCN-Final-Task -a
