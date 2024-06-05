FROM alpine:3.20

ENV PATH="/root/.cargo/bin:$PATH"

RUN apk add --no-cache \
    curl \
    gcc \
    musl-dev && \
    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y && \
    /root/.cargo/bin/cargo install cargo-watch && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
