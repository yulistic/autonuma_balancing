#!/bin/bash

# Enable swap.
# sudo swapon -a

# Disable numa balancing.
sudo sh -c "echo 0 > /proc/sys/kernel/numa_balancing" # 2 = NUMA_BALANCING_MEMORY_TIERING
sudo cat /proc/sys/kernel/numa_balancing

# Disable demotion.
sudo sh -c "echo 0 > /sys/kernel/mm/numa/demotion_enabled"
sudo cat /sys/kernel/mm/numa/demotion_enabled

