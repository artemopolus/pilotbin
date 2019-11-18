#!/bin/sh
#!/bin/bash

# if [ -n "$1" ]; then
# 	#statements
# 	echo start in mode $1
# 	if [ $1 = "cross" ]
# 	then
# 		#statements
# 		./copilot_cross -1 200 -2 1600 -3 1400 -4 -10 -n "ttyUSB0" -p "ttyS0" -b 57600 -B 57600 -c 1 -f 15001
# 	fi
# 	if [ $1 = "smpl" ]
# 	then
# 		./copilot -1 200 -2 1600 -3 1400 -4 -10 -n "ttyUSB0" -p "ttyS0" -b 57600 -B 57600 -c 1 -f 15001
# 	fi
# else
# 	echo "./start cross or ./start smpl"
# fi


/home/pi/workspace/pilotbin/./copilot_cross -1 200 -2 1600 -3 1400 -4 -10 -n "ttyUSB0" -p "ttyS0" -b 57600 -B 57600 -c 1 -f 15001

# ./copilot -1 200 -2 1600 -3 1400 -4 -10 -n "ttyUSB0" -p "ttyS0" -b 57600 -B 57600 -c 1 -f 15001
#/home/pi/projects/copilot_2/cmake-build-debug/copilot -1 1 -2 1600 -3 1400 -4 -10 -n "ttyUSB0" -p "ttyS0" -b 57600 -B 57600 -c 1 -f 15001
