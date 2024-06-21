#!/bin/bash

# Turn off swap.
sudo swapoff -a

# Enable demotion.
sudo sh -c "echo 1 > /sys/kernel/mm/numa/demotion_enabled"
sudo cat /sys/kernel/mm/numa/demotion_enabled

# Enable numa balancing.
sudo sh -c "echo 2 > /proc/sys/kernel/numa_balancing" # 2 = NUMA_BALANCING_MEMORY_TIERING
sudo cat /proc/sys/kernel/numa_balancing

