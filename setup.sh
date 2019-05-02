#!/bin/sh

if [ -s /etc/local/.config/security.disable ]; then
	echo "skipping security configuration, forced by security.disable file"
	exit 0
fi

/opt/farm/scripts/setup/extension.sh sf-secure-fs
/opt/farm/scripts/setup/extension.sh sf-secure-sshd
/opt/farm/scripts/setup/extension.sh sf-secure-lynis
/opt/farm/scripts/setup/extension.sh sf-secure-kernel
/opt/farm/scripts/setup/extension.sh sf-secure-system
/opt/farm/scripts/setup/extension.sh sf-detect-suspicious
