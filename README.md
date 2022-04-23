# Amazon Linux 2 Rust Docker image

[![Docker CI](https://github.com/krystianhub/al2-rust-builder-docker/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/krystianhub/al2-rust-builder-docker/actions/workflows/docker-publish.yml)

## Description

Basic Docker image for building Rust-based functions for [AWS Lambda](https://aws.amazon.com/lambda/)

## Usage

```bash
docker pull ghcr.io/krystianhub/al2-rust-builder-docker:latest
```

From inside of your Rust project directory:

```bash
docker run --rm -it \
        -v `pwd`:/home/workspace \
        -v ${HOME}/.cargo/registry:/usr/local/cargo/registry \
        -v ${HOME}/.cargo/git:/usr/local/cargo/git \
    ghcr.io/krystianhub/al2-rust-builder-docker:latest \
    cargo build --release --target-dir ./al2-target
```
