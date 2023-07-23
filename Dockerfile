ARG FROM
FROM ${FROM}

RUN apt-get update && apt-get install -y --no-install-recommends \
  wget \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libncurses5-dev \
  libncursesw5-dev \
  libreadline-dev \
  libsqlite3-dev \
  libgdbm-dev \
  libdb5.3-dev \
  libbz2-dev \
  libexpat1-dev \
  liblzma-dev \
  tk-dev \
  libffi-dev \
  ca-certificates \
  && rm -rf /var/lib/apt/lists/*

RUN cd /root && \
  wget https://www.python.org/ftp/python/3.9.17/Python-3.9.17.tgz && \
  tar xzf Python-3.9.17.tgz && \
  rm -f Python-3.9.17.tgz && \
  cd Python-3.9.17 && \
  ./configure --enable-optimizations && make install && \
  cd / && \
  rm -rf /root/Python-3.9.17

RUN pip3 install --no-cache-dir stellar psycopg2-binary SQLAlchemy==1.2.5 SQLAlchemy-Utils==0.33.1
