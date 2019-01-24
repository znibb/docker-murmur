FROM resin/rpi-raspbian
MAINTAINER Znibb <pontus.pson@gmail.com>

# Override pre-defined start-up
ENTRYPOINT []

# Run as root
USER root

# Install murmur
RUN apt-get update && \
    apt-get install -y mumble-server && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose port
EXPOSE 64738
EXPOSE 6502

# Run murmur
CMD ["/bin/bash", "/tmp/files/start-murmurd.sh"]
