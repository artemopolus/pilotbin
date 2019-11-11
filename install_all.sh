#!/bin/bash
I=`dpkg -s sublime-text | grep "Status" ` #проверяем состояние пакета (dpkg) и ищем в выводе его статус (grep)
if [ -n "$I" ] #проверяем что нашли строку со статусом (что строка не пуста)
then
   echo "sublime-text installed" #выводим результат
else
   	echo "sublime-text not installed"
   	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

	sudo apt-get install apt-transport-https

	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

	sudo apt-get update

	sudo apt-get install sublime-text
fi

#file space
if [ -d workspace ]
then
	echo "Dir workspace exists"
else
	echo "workspace not exists. Create"
	mkdir workspace
fi

if [ -d workspace/rasptools ]
then
	echo "rasptools exists"
else
	echo "Dir rasptools not exists. Create"
	cd workspace
	mkdir rasptools
	cd rasptools
	git clone https://github.com/raspberrypi/tools.git
	cd ../..
fi

I=`dpkg -s rsync | grep "Status" `
if [ -n "$I" ] 
then
	echo "rsync installed" 
else
	sudo apt-get install rsync
fi

# if [ -d workspace/RPiPilot ]
# then
# 	echo "RPiPilot exists"
# else
# 	echo "Dir RPiPilot not exists. Create"
# 	cd workspace
# 	git clone git@github.com:artemopolus/RPiPilot.git
# 	cd ..
# fi

# if [ -d workspace/px4 ]
# then
# 	echo "px4 exists"
# else
# 	echo "Dir px4 not exists. Create"
# 	cd workspace
# 	mkdir px4
# 	cd px4
# 	git clone git@github.com:artemopolus/Firmware.git
# 	cd ../..
# fi

I=`dpkg -s python | grep "Status" `
if [ -n "$I" ] 
then
	echo "python installed" 
else
	sudo apt-get install python python-pip
fi

I=`dpkg -s python3 | grep "Status" `
if [ -n "$I" ] 
then
	echo "python3 installed" 
else
	sudo apt-get install python3 python3-pip
fi

# I=`dpkg -s python3-pip | grep "Status" `
# if [ -n "$I" ] 
# then
# 	echo "python3-pip installed" 
# else
# 	sudo apt-get install python3-pip
# fi

# pip install numpy serial configparser logging netifaces binascii
# pip3 install numpy serial configparser logging netifaces binascii

sudo apt-get install cmake

I=`dpkg -s cmake | grep "Status" `
if [ -n "$I" ] 
then
	echo "cmake installed" 
else
	sudo apt-get install cmake
fi



# I=`dpkg -s doxygen | grep "Status" `
# if [ -n "$I" ] 
# then
# 	echo "doxygen installed" 
# else
# 	cd workspace
# 	git clone https://github.com/doxygen/doxygen.git
# 	cd doxygen
# 	mkdir build
# 	cd build
# 	cmake -G "Unix Makefiles" ..
# 	make
# 	make install
# fi
# 

# sudo apt-get install flex texinfo help2man gawk libncurses5-dev
# sudo apt-get install -y libtool-bin


echo "Done!"