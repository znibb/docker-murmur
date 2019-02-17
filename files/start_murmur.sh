#!/bin/sh

# Set folder ownership
chown -R murmur:murmur /murmur

# Retrieve SuperUser password
su_pw=$(cat /run/secrets/SU_PW)

# Set SuperUser password
murmurd -ini /murmur/murmur.conf -supw $su_pw
echo "SuperUser password set"

# Start server
echo "Starting server"
murmurd -ini /murmur/murmur.conf -fg -v
