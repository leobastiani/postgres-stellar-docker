# Postgres + Stellar docker image

[![Postgres Stellar](https://github.com/leobastiani/stellar-docker/actions/workflows/stellar.yaml/badge.svg)](https://github.com/leobastiani/stellar-docker/actions/workflows/stellar.yaml)

## Usage

Start your server

`docker run --rm -it --name postgres postgres`

Then

`docker run -it --rm --link postgres:postgres leobastiani/stellar`
