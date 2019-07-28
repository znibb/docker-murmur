# Murmur (Mumble server) in Docker
- Linux x64
- Based on alpine
- Deployed with docker-compose

## Before starting
1. Download:
 * `docker-compose.yml`
 * `files/murmur_default.conf` as `murmur.conf`
 * `.env.default` as `.env`
2. Set SuperUser password in `.env` (don't encapsulate password in quotation marks)
3. Update murmur.conf as needed

## Starting
`docker-compose up -d`
