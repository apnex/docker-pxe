#!/bin/sh

function start {
	/usr/sbin/dhcpd
	/usr/sbin/in.tftpd -4 -l -s /var/tftpboot
	/usr/sbin/nginx
	tail -f /var/log/nginx/host.access.log
}

function shell {
	/bin/sh
}

if [ -z "$1" ]
then
	start
else
	case $1 in
		shell)
			shell
		;;
		*)
			start
		;;
	esac
fi


