# Murmur (Mumble server) in Docker
- Linux x64
- Deployed with Docker Swarm

## Before starting
1. Create config: `docker config create murmur_config_v1 path/to/murmur.conf`
2. Set SuperUser password: `echo "PASSWORD_HERE" | docker secret create murmur_su_pw -`

## Starting
Deploy: `docker stack deploy -c docker-stack.yml murmur`
