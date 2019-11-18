#!/bin/bash

sshpass -p "raspberry" ssh pi@192.168.7:1 'mkdir workspace'
sshpass -p "raspberry" ssh pi@192.168.7:1 'mkdir workspace/pilotbin'
sshpass -p "raspberry" ssh pi@192.168.7:1 'mkdir log'
sshpass -p "raspberry" scp -r detector/ pi@192.168.7.1:workspace/pilotbin/

