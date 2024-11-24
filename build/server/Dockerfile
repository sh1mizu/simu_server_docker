FROM alpine:latest as builder
RUN apk add git
RUN git clone https://github.com/teamhimeh/simutrans.git
WORKDIR /simutrans
RUN apk add build-base autoconf
RUN apk add zlib-dev bzip2-dev libpng-dev
RUN autoupdate && autoconf && ./configure && make -j9

FROM alpine:latest
RUN apk add zlib libbz2 libpng libgcc libstdc++ bash shadow runuser
RUN groupadd --system --gid 1000 simutrans && useradd --system -u 1000 --gid 1000 --no-create-home simutrans
COPY --from=builder /simutrans/sim /simu_bin/sim
COPY ./files/docker-entrypoint.sh /
WORKDIR /simutrans
ENTRYPOINT ["/docker-entrypoint.sh"]
