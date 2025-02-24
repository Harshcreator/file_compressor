FROM rust:latest AS builder

WORKDIR /usr/src/file_compressor
COPY . .

RUN cargo build --release

FROM debian:bullseye-slim
COPY --from=builder /usr/src/file_compressor/target/release/file_compressor /usr/local/bin/file_compressor

WORKDIR /data
VOLUME ["/data"]

ENTRYPOINT ["file_compressor"]