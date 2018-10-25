#!/bin/bash
# Copyright 2018 RT Inc.
# Licensed under the terms of the Apache 2.0 license.
# Please see LICENSE file in the project root for terms.
#


#import our environment variables from systemd
for e in $(tr "\000" "\n" < /proc/1/environ); do
    eval "export $e"
done


echo "start slurm..." >> /rt/rt.log
echo "${SLURM_NODE_TYPE}" >> /rt/rt.log

sed -i 's/SLURM_CONTROLMACHINE/'$SLURM_CONTROLMACHINE'/g' /etc/slurm/slurm.conf
sed -i 's/SLURM_NODENAME/'$SLURM_NODENAME'/g' /etc/slurm/slurm.conf

SLURM_NODE="${SLURM_NODE_TYPE}"
if [ $SLURM_NODE = "slurmctld" ]; then
    echo "Start slurm Manager ..."
    systemctl restart munge
    systemctl restart slurmctld
    sleep 3
    systemctl restart slurmd
    while true; do sleep 1000; done
fi


if [ $SLURM_NODE = "slurmd" ]; then
    echo "Start slurm Node ..."
    sleep 6
    systemctl restart munge
    systemctl restart slurmd
    while true; do sleep 1000; done
fi

