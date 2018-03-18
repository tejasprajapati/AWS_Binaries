chmod 777 AWS_485
cp -v AWS_485 /home/pi
cp -v AWS_Connection.txt /home/pi

sudo cp -rv usr/include/* /usr/include/
cd usr/lib/
if [ -d modbus_zip ]
then
	cp -v lib* /usr/lib/
	cp -v modbus_zip/* /usr/lib/
else
	unzip modbus.zip
	cp -v lib* /usr/lib/
	cp -v modbus_zip/* /usr/lib/
	rm -rf modbus_zip
fi
cd ../../
cp -rv AWS_Binaries/.bashrc /home/pi/
cd /home/pi

