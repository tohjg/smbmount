#!/bin/bash

TAG=master
net_src=0
if [ $(id -u) -eq 0 ]; then
	if [ ! -f /usr/local/bin ]; then
		# if smbmount is not found, download from internet
		if [ ! -f ./smbmount ]; then
			net_src=1
			# download from internet
			curl -L -O https://raw.githubusercontent.com/tohjg/smbmount/$TAG/smbmount
			if [ $? -ne 0 ]; then 
				exit 4
			fi
		fi

		# copy to local bin
		cp -f ./smbmount /usr/local/bin
		if [ $? -ne 0 ]; then 
			exit 6
		fi

		# chmod it
		chmod +x /usr/local/bin/smbmount
		echo "type 'smbmount --help' for more information"

		# clean up
		if [ $net_src -eq 1 ]; then
			rm -rf ./smbmount
		fi
	else 
		echo "install: smbmount has already installed"
	fi
else 
	echo "install: need root permission"
	exit 2
fi