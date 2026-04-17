FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    nginx \
    iputils-ping \
    net-tools \
    nano \
    python3 \
    sudo \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80 22

RUN echo 'root:password' | chpasswd
CMD ["nginx", "-g", "daemon off;"]
