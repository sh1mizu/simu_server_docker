FROM alpine:3.20.1 as builder
RUN apk add git && git clone https://github.com/teamhimeh/simutrans.git
WORKDIR /simutrans
RUN apk add build-base autoconf
RUN autoupdate && autoconf && ./configure && make nettool -j9

FROM alpine:3.20.1
RUN apk add libgcc libstdc++
COPY --from=builder /simutrans/nettools/nettool /nettools/nettool
COPY ./autosave.sh /etc/periodic/hourly/autosave.sh
CMD ["crond", "-f"]
