ARG UPSTREAM_VERSION

FROM ethereum/client-go:${UPSTREAM_VERSION}

COPY jwtsecret /jwtsecret

#The TTD is that because of https://github.com/ethereum/go-ethereum/releases/tag/v1.10.18 it was changed

ENTRYPOINT geth --ropsten \
    --http --http.addr 0.0.0.0 \ 
    --http.corsdomain "*" \
    --http.vhosts "*" \ 
    --ws --ws.origins "*" \ 
    --ws.addr 0.0.0.0 \
    --syncmode ${SYNCMODE:-snap} \ 
    --metrics --metrics.addr 0.0.0.0 \ 
    --authrpc.addr 0.0.0.0 \
    --authrpc.port 8551 \
    --authrpc.vhosts "*" \
    --authrpc.jwtsecret "/jwtsecret" \
    --override.terminaltotaldifficulty $OVERRIDE_TTD \
    $EXTRA_OPTIONS
