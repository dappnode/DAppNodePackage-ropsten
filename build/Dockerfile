FROM ethereum/client-go:v1.9.5 as geth

# Pull Geth into a second stage deploy alpine container
FROM alpine:edge

RUN apk add --no-cache ca-certificates
COPY --from=geth /usr/local/bin/geth /usr/local/bin/geth

ENTRYPOINT geth --testnet --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --ws --wsorigins "*" --wsaddr 0.0.0.0 $EXTRA_OPTS
