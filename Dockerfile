FROM debian:stretch

RUN apt-get update && apt-get -y install --no-install-recommends \
autoconf \
automake \
build-essential \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

ADD . /app/
RUN [ "make" ]

ENTRYPOINT ["/app/remserial"]
