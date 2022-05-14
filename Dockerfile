#FROM dockercore/golang-cross
#FROM ghcr.io/gythialy/golang-cross:v1.17.9-0
FROM ghcr.io/gythialy/golang-cross

# flex bison 用于编译mips的pcap
RUN apt-get update && \
    apt-get install -y bash musl-tools gcc-mips-linux-gnu g++-mips-linux-gnu libpcap-dev flex bison && \
    apt -y autoremove && \
    apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["bash", "-c"]