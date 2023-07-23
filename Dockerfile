ARG FROM
FROM ${FROM}

RUN apt-get update && \
    apt-get install -y wget build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev

WORKDIR /root
RUN wget https://www.python.org/ftp/python/3.9.17/Python-3.9.17.tgz
RUN tar xzf Python-3.9.17.tgz
RUN rm -f Python-3.9.17.tgz

WORKDIR /root/Python-3.9.17
RUN ./configure --enable-optimizations
RUN make install
WORKDIR /root
RUN rm -rf Python-3.9.17

RUN pip3 install stellar psycopg2-binary
RUN pip3 install SQLAlchemy==1.2.5 SQLAlchemy-Utils==0.33.1

RUN stellar
