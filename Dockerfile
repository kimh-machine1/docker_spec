FROM ubuntu:12.04 
MAINTAINER Wampa <wampa@datahero.com>

# Use bash 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -y \ 
build-essential \ 
chrpath \ 
libssl-dev \ 
fontconfig \ 
libfontconfig1-dev \ 
python-software-properties \ 
g++ \ 
curl \ 
libssl-dev \ 
openssl \ 
pkg-config \ 
make \ 
unzip \ 
ntp \ 
zip

# Add various PPA repositories 
RUN add-apt-repository -y ppa:libreoffice/libreoffice-4-3 
RUN add-apt-repository -y ppa:ondrej/mysql-5.6 
RUN add-apt-repository -y ppa:vbernat/haproxy-1.5

RUN apt-get update && apt-get install -y \ 
mysql-client=5.6* \ 
# Install libreoffice 
libreoffice=1:4.3.* \ 
# Install python and packages needed by our python wheels 
python-setuptools=0.6* \ 
python2.7-dev=2.7* \ 
libmysqlclient-dev=5.6* \ 
libatlas-base-dev=3.8* \ 
gfortran=4:4.6*

RUN easy_install pip && pip install virtualenv

# TODO install sumologic 
# TODO install phantomjs 
# TODO install fonts 
# TODO config ntp

# Create and run the user we run the app as, the rest of the commands are run as this user. 
RUN adduser --disabled-password --gecos "" ubuntu 
USER ubuntu