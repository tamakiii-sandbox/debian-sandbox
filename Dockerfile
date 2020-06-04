FROM debian:10.3

RUN apt-get update && \
    apt-get install -y \
      bash \
      make \
      git \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*