if [ -d AWS_Binaries ]
then
	cd AWS_Binaries
	git pull origin master
else
	git clone https://github.com/tejasprajapati/AWS_Binaries.git
	cd AWS_Binaries
fi

chmod 777 AWS_485
cp -v AWS_485 /home/pi
cp -v AWS_Connection.txt /home/pi

sudo cp -rv usr/include/* /usr/include/
cd usr/lib/
if [ -d modbus_zip ]
then
	sudo cp -v lib* /usr/lib/
	sudo cp -v modbus_zip/* /usr/lib/
else
	unzip -u modbus.zip
	sudo cp -v lib* /usr/lib/
	if [ -d modbus_zip ]
	then
		sudo cp -v modbus_zip/* /usr/lib/
		rm -rf modbus_zip
	fi
fi
cd ../../
sudo cp -v rc.local /etc/rc.local
cd /home/pi

