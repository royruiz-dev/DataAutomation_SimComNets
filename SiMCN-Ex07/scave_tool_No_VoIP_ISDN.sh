#!/bin/bash

scavetool export  -f 'module(*.user[*].pppg$o[0].channel) AND name(throughput:last)' -o results/DSL01.csv -F CSV-S results/DSL01-*.sca

