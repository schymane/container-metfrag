#!/bin/bash

# Name
NAME="metfrag"

# CPU options
#CPU_SHARES="--cpu-shares=8"
#CPU_SETS="--cpuset-cpus=0-$[$CPU_SHARES-1]"
#CPU_MEMS="--cpuset-mems=0"
#MEM="--memory=8g"



# Copy local settings file to project
cp /vol/metfragweb/settings.properties .

# Build docker
docker build --rm=true $CPU_SHARES $CPU_SETS $CPU_MEMS $MEM --tag=$NAME .
