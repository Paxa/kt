FROM golang:1.10.1-alpine3.7 as builder
RUN apk add git --no-cache

RUN go get -u github.com/fgeller/kt
RUN go get -u github.com/fgeller/jsonify


FROM alpine:3.7
MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>

RUN apk add bash jq --no-cache && \
    rm -rf /var/cache/apk/* && \
    rm -rf /usr/share/terminfo

COPY --from=builder /go/bin/kt /usr/bin
COPY --from=builder /go/bin/jsonify /usr/bin/jsonify

ADD kt_bash_complete /etc/profile.d/

ENTRYPOINT ["bash", "--init-file", "/etc/profile.d/kt_bash_complete"]
