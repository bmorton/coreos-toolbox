FROM ubuntu:14.04
MAINTAINER Brian Morton "brian@mmm.hm"

RUN apt-get update
RUN apt-get -y install vim htop tmux curl

ADD https://github.com/bmorton/deployctl/releases/download/v0.2.0-dev/deployctl-v0.2.0-dev-linux /usr/local/bin/deployctl
RUN chmod +x /usr/local/bin/deployctl

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN groupadd -g 500 core && useradd -u 500 -g 500 -G sudo -s /bin/bash core
