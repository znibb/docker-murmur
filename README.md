# murmur (mumble-server) as RPi Docker image

Files that needs adding before container is created:
files/database/mumble-server.sqlite
files/mumble-server.ini
files/mumble-server.log

Set 'SUPERUSER_PASSWORD' and 'FILES_DIR' in 'start.sh'.

If you renamed any files update file names in 'files/start-murmurd.sh'.
