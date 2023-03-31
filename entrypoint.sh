#!/bin/sh

# Read the desired username and password from the configmap
username=$(cat /config/username)
password=$(cat /config/password)

# Create the user and set the password
adduser -D $username
echo "${username}:${password}" | chpasswd

# Start the dante-server
exec /usr/sbin/sockd