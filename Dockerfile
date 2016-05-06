FROM alpine:3.3

ARG DOCKER_VERSION=1.10.3
ARG COMPOSE_VERSION=1.7.1

RUN apk add --no-cache curl && \
	curl -fSL "https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}" \
	-o /usr/local/bin/docker \
	&& chmod +x /usr/local/bin/docker \
	&& curl -fSL "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m`" \
	-o /usr/local/bin/docker-compose \
	&& chmod +x /usr/local/bin/docker-compose