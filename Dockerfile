# docker build -t website .
# docker run --rm -it -p 8080:8080 website

FROM caddy:2

# Copy built application
RUN mkdir -p /usr/share/caddy/public
COPY public /usr/share/caddy/public

COPY Caddyfile /etc/caddy/Caddyfile
RUN caddy validate --config /etc/caddy/Caddyfile
