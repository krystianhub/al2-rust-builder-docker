FROM amazonlinux:2.0.20220912.1

RUN yum install -y git-core gcc openssl-devel

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

RUN curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path --profile minimal -y
RUN chmod -R a+w $RUSTUP_HOME $CARGO_HOME

RUN mkdir -p /home/workspace
WORKDIR /home/workspace
