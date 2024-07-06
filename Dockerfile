FROM alpine:3.20.1 as builder
RUN apk add git
RUN git clone https://github.com/teamhimeh/simutrans.git
WORKDIR /simutrans
RUN apk add build-base autoconf
RUN apk add zlib-dev bzip2-dev libpng-dev
RUN autoupdate && autoconf && ./configure && make -j9

FROM alpine:3.20.1
RUN apk add zlib libbz2 libpng libgcc libstdc++
COPY --from=builder /simutrans/sim /simutrans/sim
COPY ./data/font /simutrans/font
COPY ./data/text /simutrans/text
WORKDIR /simutrans
CMD ["./sim", "-server"]
