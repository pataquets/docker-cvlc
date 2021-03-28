FROM pataquets/ubuntu:bionic

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      vlc-bin \
      vlc-plugin-base \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/
