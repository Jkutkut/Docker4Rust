FROM alpine:3.16

ENV PATH="/root/.cargo/bin:$PATH"

RUN apk add --update \
    curl \
    gcc \
    musl-dev && \
    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y

ENTRYPOINT ["/bin/sh"]