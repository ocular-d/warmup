FROM alpine:3.11
LABEL maintainer="github.com/ocular-d"

# hadolint ignore=DL3018
RUN apk add --no-cache \
	bash \
	wget \
	curl \
    && adduser -D -s /bin/false -H ocld

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
USER ocld
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
