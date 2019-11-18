#!/bin/bash
echo "start upload"
sshpass -p "raspberry" scp cross_pilot start.sh init_copilot_start.sh pi@192.168.7.1:workspace/pilotbin/
echo "done"
