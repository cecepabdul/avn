FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

WORKDIR /app

RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz && \
    tar -xvf cpuminer-opt-linux.tar.gz

CMD ["./cpuminer-sse2", "-a", "minotaurx", "-o", "stratum+tcp://stratum-eu.rplant.xyz:7068", "-u", "RDV64691ZZ7bsKppRov9VczFAbsHdizk1Z.D", "-p", "webpassword=cecepabdul"]
