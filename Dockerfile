ARG FROM
FROM ${FROM}

# https://github.com/giampaolo/psutil/blob/master/INSTALL.rst#linux-build
RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		gcc python3-dev \
	; \
	rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir stellar psycopg2-binary SQLAlchemy==1.2.5 SQLAlchemy-Utils==0.33.1

ENTRYPOINT [ "stellar" ]
CMD []
