FROM jkutkut/docker4rust as builder

WORKDIR /app

COPY . .

RUN cargo build --release

# Release image
FROM alpine:3.16

WORKDIR /app

# COPY --from=builder /app/target/release/XXXXXXXX . # TODO
# ENTRYPOINT ["./XXXXXXXX"] # TODO