# Postgres + Stellar docker image

[![Postgres Stellar](https://github.com/leobastiani/stellar-docker/actions/workflows/stellar.yaml/badge.svg)](https://github.com/leobastiani/stellar-docker/actions/workflows/stellar.yaml)

## Tags:

### stellar image

- leobastiani/stellar:latest

### postgres-stellar image

- leobastiani/postgres-stellar:11
- leobastiani/postgres-stellar:12
- leobastiani/postgres-stellar:13
- leobastiani/postgres-stellar:14
- leobastiani/postgres-stellar:15

## Example

Start your server

`docker run --rm -it --name postgres leobastiani/postgres-stellar:15`

Then

`docker exec -it postgres stellar`
