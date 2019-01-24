#!/bin/bash

# Make sure file/dir permissions are set up correctly
chown -R mumble-server:mumble-server /tmp/files/database
chown root:root /tmp/files/mumble-server.ini
chown mumble-server:mumble-server /tmp/files/mumble-server.log

# Set SuperUser password if one was supplied
if env | grep -q ^MUMBLE_SUPW=
then
	echo "Setting SuperUser password"
	murmurd -ini /tmp/files/mumble-server.ini -supw $MUMBLE_SUPW
	echo "Done"
fi

# Start murmur daemon
echo Starting mumble-server
murmurd -version
murmurd -fg -v -ini /tmp/files/mumble-server.ini
