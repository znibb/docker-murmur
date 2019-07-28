#!/bin/sh

# Set SuperUser password
murmurd -ini /murmur/murmur.conf -supw $SUPERUSER_PASSWORD
echo "SuperUser password set"

# Start server
echo "Starting server"
murmurd -ini /murmur/murmur.conf -fg -v
