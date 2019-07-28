#!/bin/bash

###
# Increments version number and pushes image to Docker hub under 'latest'
# as well as the new version number.
#
# Fetches info from 'build.sh'
###

# Prompt user to login to Docker hub if not already logged in
docker system info | grep Username > /dev/null
if [[ $? -ne 0 ]]; then
	echo "Error: Log into Docker Hub first"
	exit 1
fi

# Increment version number
sed -i -r 's/(LATEST_VERSION=)([0-9]+)/echo "LATEST_VERSION=$((\2+1))"/ge' build.sh

# Fetch info
username=$(grep USERNAME= build.sh | cut -d "=" -f 2)
image=$(grep IMAGE= build.sh | cut -d "=" -f 2)
version=$(grep LATEST_VERSION= build.sh | cut -d "=" -f 2)

# Push new version and update 'latest' tag
echo "Pushing version: $version"
docker tag $username/$image:latest $username/$image:$version
docker push $username/$image:$version
docker push $username/$image:latest
echo "Done."
