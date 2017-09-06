FROM alpine:3.5

MAINTAINER Igor Semenyuk <igor.semenyuk@rolique.io>

ENV MYSQL_DB_USER zipper_user
ENV MYSQL_DB_PASS zipper_pass
ENV MYSQL_DB_HOST mariadb
ENV MYSQL_DB_PORT 3306
ENV MYSQL_DATABASE zipper_db

ENV S3_REGION eu-central-1
ENV S3_PROFILE test-account
ENV S3_BUCKET schleniger-files

COPY        ./app/aws/credentials /root/.aws/credentials

WORKDIR     /usr/local/bin
ADD         ./build/zipper .
RUN         apk add --update ca-certificates && \
            chmod +x /usr/local/bin/zipper && \
            rm -Rf /var/cache/apk/*

CMD         "./zipper"
