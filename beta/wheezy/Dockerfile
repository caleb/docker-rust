FROM buildpack-deps:wheezy

MAINTAINER Caleb Land <caleb@land.fm>

RUN apt-get update \
&&  apt-get install -y file less man valgrind \
&&  rm -rf /var/lib/apt/lists/*

# needed by cargo
ENV USER root

# Change to force a build of rust/cargo
ENV DATE 2015-04-13

RUN curl -sSf https://static.rust-lang.org/rustup.sh | bash -s -- -y --disable-sudo --channel=beta
RUN ldconfig

VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
