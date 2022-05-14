# gocross
golang cross compiler, support windows/linux/darwin/mips/arm, with goreleaser


## Versions
OS Version: Debian bullseye

goreleaser: 1.8.3

golang: 1.18.2-0

osx-sdk: 11.1

gcc: 10

## How to use
```
docker pull lubyruffy/gocross
```
```
docker run -it --rm -v $GOPATH:/go -w /go/src/github.com/org/repo/<dir of .goreleaser.yaml> lubyruffy/gocross "goreleaser build --snapshot --rm-dist --timeout 60m --skip-validate"
```
