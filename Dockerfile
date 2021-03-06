FROM ghcr.io/gythialy/golang-cross:v1.18.2

# flex bison 用于编译mips的pcap
RUN apt-get update && \
    apt-get install -y bash musl-tools gcc-mips-linux-gnu g++-mips-linux-gnu libpcap-dev flex bison && \
    apt -y autoremove && \
    apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["bash", "-c"]
