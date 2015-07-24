FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git libtool autoconf automake pkg-config g++ software-properties-common curl
RUN apt-get install --reinstall make # shouldn't be required but 'make' for libsodium couldn't find it.
RUN make -version
