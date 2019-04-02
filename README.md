# codenize-tools-in-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/kiriake/codenize-tools.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kiriake/codenize-tools.svg)

## Settings

### AWS credentials

Set environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_KEY_ID, AWS_REGION.
Otherwise change to a directory where .envrc is valid.

### Add .${SHELL}rc

```sh
COMPOSE_FILE=~/git/codenize-tools-in-docker/docker-compose.yaml
alias kelbim='docker-compose -f $COMPOSE_FILE run --rm codenize-tools kelbim'
alias piculet='docker-compose -f $COMPOSE_FILE run --rm codenize-tools piculet'
alias roadwork='docker-compose -f $COMPOSE_FILE run --rm codenize-tools roadwork'
```

And reload rc file.

## Usage

```sh
$ kelbim -v
kelbim 0.3.1

$ piculet -e -o Groupfile
Export SecurityGroup to `Groupfile`

etc...
```
