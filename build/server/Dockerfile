FROM alpine:3.20.1 as builder
RUN apk add git
RUN git clone -b v40_1_1 https://github.com/teamhimeh/simutrans.git
WORKDIR /simutrans
RUN apk add build-base autoconf
RUN apk add zlib-dev bzip2-dev libpng-dev
RUN autoupdate && autoconf && ./configure && make -j9

FROM alpine:3.20.1
RUN apk add zlib libbz2 libpng libgcc libstdc++ bash shadow runuser
COPY --from=builder /simutrans/sim /simu_bin/sim
COPY ./files/docker-entrypoint.sh /
WORKDIR /simutrans
ENTRYPOINT ["/docker-entrypoint.sh"]
