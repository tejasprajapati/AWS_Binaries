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
fi
cd /home/pi

