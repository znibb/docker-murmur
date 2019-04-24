# Murmur (Mumble server) in Docker
- Linux x64
- Deployed with Docker Swarm

## Before starting
1. Clone/download this repo: `git clone https://github.com/znibb/docker-murmur`
2. Create config: `docker config create murmur_config_v1 path/to/murmur.conf`
  - NOTE Example config in files/
3. Set SuperUser password: `echo "PASSWORD_HERE" | docker secret create murmur_su_pw -`

## Starting
Deploy: `docker stack deploy -c docker-stack.yml murmur`
