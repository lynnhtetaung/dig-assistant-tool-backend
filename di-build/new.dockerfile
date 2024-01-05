FROM ubuntu:20.04
RUN apt-get
WORKDIR /app
COPY .
CMD [