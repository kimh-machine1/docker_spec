From node:0.10.36-wheezy
RUN apt-get update && apt-get install -y git python supervisor wget redis-server
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && aptitude install -y postgresql-9.3




