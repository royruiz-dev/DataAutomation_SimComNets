#!/bin/bash

cd ~/workspace/a-team-2/SiMCN-Ex07
opp_makemake -f --deep -O out -KINET_PROJ=${HOME}/workspace/inet4 -DINET_IMPORT -I. -I$\(INET_PROJ\)/src -L$\(INET_PROJ\)/src -lINET$\(D\)
make MODE=release
./SiMCN-Ex07 -a