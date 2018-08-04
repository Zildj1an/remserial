FROM multiarch/crossbuild
ENV CROSS_TRIPLE=arm-linux-gnueabihf
ENV CFLAGS=-m32

RUN apt-get -y install --no-install-recommends \
libc6-dev-i386 \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

ADD . /app/
RUN [ "make" ]

ENTRYPOINT ["/app/remserial"]
