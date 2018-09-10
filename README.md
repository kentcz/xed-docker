# xed-docker
Dockerized Intel X86 Encoder Decoder (Intel XED)

Quick reference
---
- XED homepage: https://intelxed.github.io/
- XED github repo: https://github.com/intelxed/xed
- Docker hub repo: https://hub.docker.com/r/kentcz/xed/

Build a docker image
---
```
git clone --recurse-submodules git@github.com:kentcz/xed.git
cd xed
docker build -t kentcz/xed:local-dev .
```

Use a docker image
---
The docker entrypoint exposes the examples from the `examples/` directory as commands. For example, to use the `xed` command to decode the  bytes `c4 03 1d 18 74 f4 20 01`
```
 docker run -it kentcz/xed xed -64 -d c4 03 1d 18 74 f4 20 01
```
The `xed-tester` command will run several tests cases
```
docker run -it kentcz/xed xed-tester
```
