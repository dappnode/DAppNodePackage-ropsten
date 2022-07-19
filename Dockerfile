ARG UPSTREAM_VERSION

FROM ethereum/client-go:${UPSTREAM_VERSION}

COPY jwtsecret /jwtsecret

ENTRYPOINT geth --ropsten \
    --http --http.addr 0.0.0.0 \ 
    --http.corsdomain "*" \
    --http.vhosts "*" \ 
    --ws --ws.origins "*" \ 
    --ws.addr 0.0.0.0 \
    --syncmode ${SYNCMODE:-snap} \ 
    --metrics --metrics.addr 0.0.0.0 \ 
    --authrpc.port 8551 \
    --authrpc.vhosts "*" \
    --authrpc.jwtsecret "/jwtsecret" \
    --override.terminaltotaldifficulty 100000000000000000000000 \
    $EXTRA_OPTIONS
