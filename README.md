# pastebin

pastebin is a self-hosted pastebin web app that lets you create and share
"ephemeral" data between devices and users. There is a configurable expiry
(TTL) afterwhich the paste expires and is purged.

This fork is modified and somewhat simplified from [this repo](https://github.com/prologic/pastebin).

## Usage in Docker

```#!bash
$ git clone https://github.com/yijinlee/pastebin.git
$ cd pastebin
$ docker build -t pastebin .
$ docker create --name=pastebin --net <optionalnetwork> --restart unless-stopped pastebin -expiry 1h
$ docker start pastebin
```

Use the Web UI: http://localhost:8000/, or setup reverse-proxy
  (expose Docker port, or use container name `pastebin` on Docker network `<optionalnetwork>` above).

## Configuration

When running the `pastebin` server there are a few default options you might
want to tweak:

```
$ ./pastebin --help
  ...
  -expiry duration
        expiry time for pastes (default 5m0s)
```

Setting a custom `-expiry` lets you change when pastes are automatically
expired (*the purge time is 2x this value*).

## License

MIT
