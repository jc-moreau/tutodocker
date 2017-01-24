RUN docker build -t ubuntu:compile -f Dockerfile-ubuntu-compile .
FROM ubuntu:compile
ADD https://raw.githubusercontent.com/herveleclerc/tutodockeraw/master/add/hello_add.c /
RUN make hello_add && rm -f /hello_add.c
CMD /hello_add
