#! /bin/bash

ARG="1 5 2 4 3"
./push_swap $ARG | ./checker $ARG
./push_swap $ARG | wc -l
