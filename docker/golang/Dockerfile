FROM alpine:3.5

MAINTAINER Igor Semenyuk <igor.semenyuk@rolique.io>

ENV GOLANG_VERSION 1.9
ENV GOLANG_SRC_URL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz
ENV GOLANG_SRC_SHA256 a4ab229028ed167ba1986825751463605264e44868362ca8e7accc8be057e993
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
ENV MYSQL_DB_USER zipper_user
ENV MYSQL_DB_PASS zipper_pass
ENV MYSQL_DB_HOST mariadb
ENV MYSQL_DB_PORT 3306
ENV MYSQL_DATABASE zipper_db

ENV S3_REGION eu-central-1
ENV S3_PROFILE test-account
ENV S3_BUCKET schleniger-files

RUN apk update && apk upgrade \
	&& apk add --no-cache ca-certificates \
	bash \
	git \
	openssh \
  && set -ex \
	&& apk add --no-cache --virtual .build-deps \
		gcc \
		musl-dev \
		openssl \
		go \
	\
	&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" \
	\
	&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz \
	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - \
	&& tar -C /usr/local -xzf golang.tar.gz \
	&& rm golang.tar.gz \
  \
	&& cd /usr/local/go/src \
	&& ./make.bash \
	\
	&& apk del .build-deps \
	&& mkdir -p "$GOPATH/src" "$GOPATH/bin" \
	&& mkdir "$HOME/.aws" \
  && chmod -R 777 "$GOPATH" \
  && chmod -R 777 "$HOME/.aws" \
  && go get github.com/Masterminds/glide \
  && go build github.com/Masterminds/glide

COPY ./app/aws/credentials /root/.aws/credentials

COPY ./app $GOPATH/src/zipper

WORKDIR $GOPATH/src/zipper

RUN glide install
RUN glide up

CMD ["go", "run", "main.go"]
