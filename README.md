# ka's nostr relay ops

## Prerequisites

- Docker
- `nostr.kaosfield.net` A record to the real IP address

## How to run

```sh
mkdir data

docker compose up -d
```

## How to change the user ID

... or, if `$UID` is empty:

```sh
# Check your user ID.
id
# More direct method to check it.
id -u $(whoami)

cp .env.example .env
vi .env
docker compose up -d
```

# About `config.toml`

Customize only `relay_url`.

`config.toml.orig` is same to https://github.com/scsibug/nostr-rs-relay/blob/b1957ab2b16b6ebba66aae504c2812f0661d75e0/config.toml

SHA256 checksum

```
ee9a8584f9c0289b49add8836fe4100dd292f02fc53cec86a296cfb52fded0d5  config.toml.orig
```

# References

- https://github.com/scsibug/nostr-rs-relay
- https://github.com/SteveLTN/https-portal

# License

[![Public Domain](http://i.creativecommons.org/p/mark/1.0/88x31.png)](http://creativecommons.org/publicdomain/mark/1.0/ "license")

This work is free of known copyright restrictions.
