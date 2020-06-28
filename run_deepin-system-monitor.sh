#!/bin/bash

# Run the program
sudo setcap cap_kill,cap_net_raw,cap_dac_read_search,cap_sys_ptrace+ep ./deepin-system-monitor
