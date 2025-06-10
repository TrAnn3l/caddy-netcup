FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/netcup=github.com/oltdaniel/caddy-dns-netcup@1de4cf24d747af16ea4a82fdaff9e44d8774e627

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
