# gocross
golang cross compiler, support windows/linux/darwin/mips/arm, with goreleaser, support CGO


## Versions

If not necessary, latest version doesn't mean it's good for you. You should conside stability, compatibility and image size.

### v1.0
| Package     | Version         |
| ----------- | -----------     |
| OS Version  | Debian bullseye |
| goreleaser  | 1.8.3           |
| golang      | 1.18.2-0        |
| osx-sdk     | 11.1            |
| gcc         | 10              |
### v0.1
| Package     | Version         |
| ----------- | -----------     |
| OS Version  | Debian buster   |
| goreleaser  | 1.7.0           |
| golang      | 1.17.9-0        |
| osx-sdk     | 11.1            |
| gcc         | 8               |

## How to use
Pull:
```
docker pull lubyruffy/gocross
```
Goreleaser:
```
docker run -it --rm -v $GOPATH:/go -w /go/src/github.com/org/repo/<dir of .goreleaser.yaml> lubyruffy/gocross "goreleaser build --snapshot --rm-dist"
```

Go build:
```
docker run -it --rm -v $GOPATH:/go -w /go/src/github.com/org/repo lubyruffy/gocross "go build"
```

## Some tips
 - If you want to use libpcap link static, such as go build with ldflags like '-extldflags "-static"', then you'd better use system inner apt libpcap-dev directly, because there are many issues of dbus-1/systemd when manually compile.