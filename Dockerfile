FROM alpine

RUN apk add --no-cache --virtual gnuradio-build-dependencies \
    git \
    build-base \
    autoconf \
    automake \
    libtool \
    yasm

ENV REVISION master
RUN git clone --depth 1 --branch ${REVISION} https://github.com/wbhart/mpir.git /mpir

WORKDIR /mpir

RUN ./autogen.sh
RUN ./configure --prefix=/opt/mpir
RUN make install

