FROM debian:10.3

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      openssl \
      bash \
      make \
      curl \
      git \
      vim \
      ssh \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# https://aka.ms/vsls-linux-prereq-script
# https://github.com/MicrosoftDocs/live-share
RUN curl -o /usr/local/bin/linux-prereqs.sh https://raw.githubusercontent.com/MicrosoftDocs/live-share/a48488302bc56abdedf7130ec22b4e21ac16a4ef/scripts/linux-prereqs.sh && \
    chmod +x /usr/local/bin/linux-prereqs.sh && \
    /usr/local/bin/linux-prereqs.sh
