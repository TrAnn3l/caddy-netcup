FROM caddy:2.10.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/netcup=github.com/oltdaniel/caddy-dns-netcup@1de4cf24d747af16ea4a82fdaff9e44d8774e627 \
    --with github.com/greenpau/caddy-security

FROM caddy:2.10.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
