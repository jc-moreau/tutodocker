FROM ubuntu:compile
ADD https://raw.githubusercontent.com/herveleclerc/tutodockeraw/master/add/hello_add.c /
RUN make hello_add
CMD /hello_add
