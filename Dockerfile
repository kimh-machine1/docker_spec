FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git libtool autoconf automake pkg-config g++ software-properties-common curl
RUN apt-get install --reinstall make # shouldn't be required but 'make' for libsodium couldn't find it.
RUN wget http://ftp.gnu.org/gnu/make/make-4.1.tar.gz && tar zxvf make-4.1.tar.gz && cd make-4.1 && \
  ./configure && make && make install
RUN make -version
