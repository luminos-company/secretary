# Secretary

<img src="https://raw.githubusercontent.com/luminos-company/secretary/main/.github/assets/temp_logo.png" width="300">

[![Luminos Open](https://img.shields.io/badge/Luminos%20Open-TIP-red)](https://github.com/luminos-company/secretary/actions/workflows/codeql.yml)
[![CodeQL](https://github.com/luminos-company/secretary/actions/workflows/codeql.yml/badge.svg)](https://github.com/luminos-company/secretary/actions/workflows/codeql.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/luminos-company/secretary)](https://goreportcard.com/report/github.com/luminos-company/secretary)
[![Go Reference](https://pkg.go.dev/badge/github.com/luminos-company/secretary.svg)](https://pkg.go.dev/github.com/luminos-company/secretary)


An open source, key management system. Written in GO.

## What is Secretary?
Secretary is a key management system that allows you to store and manage your keys.

You would be able to generate various types of keys, such as RSA(ALMOST READY), ECDSA(WIP), and Ed25519(WIP), rotating them or keeping them persistent.

## Why Secretary?
There are many key management systems out there, but none of them are open source. This is a problem, because you can't trust a closed source system with your keys.

## Why Go?
Go is a great language for writing systems like this. It's fast, easy to use, and has a great community (And we love it ❤️).

## How do I use it?
You can use the docker image or build it yourself.

To run the docker image execute the following command:
```bash
docker run -p 8080:8080 -p 50051:50051 -v /persistent/keys:/keys ghcr.io/luminos-company/secretary:main
```

Soon the Traefik configuration.

## How do I contribute?
You can contribute by opening a pull request, or by opening an issue.
Or if you don't have the time, you can support us by donating.

[![Open Collective](https://opencollective.com/secretary/tiers/backers.svg)](https://opencollective.com/secretary/)
[![Open Collective](https://opencollective.com/secretary/tiers/sponsors.svg)](https://opencollective.com/secretary/)  

## License
This project is licensed under the GNU General Public License v3.0. You can read more about it [here](LICENSE).

## Technologies and Libraries
- [GORM](https://gorm.io/)
- [grpc-go](https://github.com/grpc/grpc-go)
- [Sonic](https://github.com/bytedance/sonic)
- [UUID](github.com/google/uuid)
