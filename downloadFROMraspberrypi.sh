#!/bin/bash
if [ -e log ]; then
	echo "start download"
else
	echo "Create folder log and start"
	mkdir log
fi
sshpass -p "raspberry" scp -r pi@192.168.7.1:log/ log/
cd log
x=0
trg="outcpp_$x.avi"
# while [ -e $trg ]; do
while [ 1 ]; do
	#statements
	# echo "check: $trg"
	if [ -e $trg ]; then
		#statements
		echo "$trg is executed"
		x=$(( $x + 1 ))
		trg="outcpp_$x.avi"
	else
		break
	fi
	
done
echo "use name $trg"
cd ..
sshpass -p "raspberry" scp pi@192.168.7.1:outcpp.avi log/$trg

echo "done"
