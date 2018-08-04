FROM multiarch/crossbuild
ENV CROSS_TRIPLE=arm-linux-gnueabihf
ENV CFLAGS=-m32
ADD . /app/
RUN [ "make" ]
ENTRYPOINT ["/app/remserial"]
