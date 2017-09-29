FROM alpine:3.6

MAINTAINER Pavel Evstigneev <pavel.evst@gmail.com>

ADD kt /usr/bin

CMD ["/usr/bin/kt"]
