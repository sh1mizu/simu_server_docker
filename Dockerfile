FROM alpine:3.20.1 as builder
RUN apk add git
RUN git clone https://github.com/teamhimeh/simutrans.git
WORKDIR /simutrans
RUN apk add build-base autoconf
RUN apk add zlib-dev bzip2-dev libpng-dev
RUN autoupdate && autoconf && ./configure && make -j9

FROM alpine:3.20.1
RUN apk add zlib libbz2 libpng libgcc libstdc++
COPY --from=builder /simutrans/sim /simu_bin/sim
WORKDIR /simutrans
CMD /simu_bin/sim -use_workdir -lang ja -server 13353 -server_admin_pw ${SERVER_ADMIN_PW}
