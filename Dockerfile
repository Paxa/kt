FROM golang:1.9.1-alpine3.6 as builder
RUN apk add git --no-cache
RUN go get -u github.com/fgeller/kt


FROM alpine:3.6
MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>
COPY --from=builder /go/bin/kt /usr/bin
ENTRYPOINT ["/usr/bin/kt"]
