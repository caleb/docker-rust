FROM debian:wheezy

MAINTAINER Caleb Land <caleb@land.fm>

RUN apt-get update \
&&  apt-get install -y curl build-essential

RUN apt-get install -y file less man valgrind

# needed by cargo
ENV USER root

# Change to force a build of rust/cargo
ENV DATE 2015-04-06

RUN curl -sL https://static.rust-lang.org/dist/rust-nightly-x86_64-unknown-linux-gnu.tar.gz | tar xvz -C /tmp \
&&  /tmp/rust-nightly-x86_64-unknown-linux-gnu/install.sh \
&&  rm -rf /tmp/rust-nightly-x86_64-unknown-linux-gnu

RUN curl -sL https://static.rust-lang.org/cargo-dist/cargo-nightly-x86_64-unknown-linux-gnu.tar.gz | tar xvz -C /tmp \
&&  /tmp/cargo-nightly-x86_64-unknown-linux-gnu/install.sh \
&&  rm -rf /tmp/cargo-nightly-x86_64-unknown-linux-gnu

VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
