FROM golang:1.19-alpine3.16 as builder
RUN apk add git --no-cache

RUN go install github.com/fgeller/kt@latest
RUN go install github.com/fgeller/jsonify@latest


FROM alpine:3.16
MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>

RUN apk add bash jq curl busybox-extras nano --no-cache && \
    rm -rf /var/cache/apk/* && \
    rm -rf /usr/share/terminfo

COPY --from=builder /go/bin/kt /usr/bin
COPY --from=builder /go/bin/jsonify /usr/bin/jsonify

ADD kt_complete.sh /etc/profile.d/
RUN echo 'source /etc/profile' > /root/.bashrc
