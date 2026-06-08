ARG CADDY_VERSION=2.11.4

FROM caddy:${CADDY_VERSION}-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/ovh

# 3. recall the variable (mandatory after FROM)
ARG CADDY_VERSION
FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
