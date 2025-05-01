FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/netcup@a811da94403509715bd149669b07544706fd6d46

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
