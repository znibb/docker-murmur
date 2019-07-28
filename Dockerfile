FROM alpine:3.10

LABEL maintainer="znibb <znibb@zkylark.se>"

# Install murmur
RUN apk add --no-cache murmur

# Create workdir
RUN mkdir /murmur && \
    chown -R murmur:murmur /murmur

# Add default config and start script
COPY ./files/murmur_default.conf /murmur/murmur.conf
COPY ./files/start_murmur.sh /murmur/start_murmur.sh

# Expose port
EXPOSE 64738
EXPOSE 6502

# Start murmur
CMD ["/bin/sh", "/murmur/start_murmur.sh"]
