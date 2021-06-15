#!/bin/bash

echo "Installing updacteum";

FILE=./updacteum

if test -f "$FILE"; then
	sudo chmod +x updacteum;


else
	touch updacteum
	echo '#!/bin/bash

echo "updacteum"

echo "Shutdown after updates?" \[Y\|N\]

read VAR2;
case "$VAR2" in
	n|N)
		sudo apt update

		sudo apt upgrade -y

		;;
	y|Y)

		sudo apt update

		sudo apt upgrade -y

		shutdown -h +1
		
		;;
	*)
		echo "Invalid"
		
		;;
	esac'>updacteum;

sudo chmod +x updacteum;

fi

sudo mv updacteum /usr/bin/;
sudo chmod +x uninstall.sh;

echo "Done! Now you can run the application with: updacteum";
