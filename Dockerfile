FROM alpine
LABEL maintainer="Mykola Bubelich <projects@bubelich.com>"

# Metadata
LABEL org.label-schema.vcs-url="https://github.com/thesimj/docker-kubectl" \
      org.label-schema.docker.dockerfile="/Dockerfile"

ENV KUBE_VERSION="v1.13.1"

RUN apk add --update ca-certificates && \
    apk add --update --no-cache curl gettext && \
    curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    apk del --purge curl && \
    rm /var/cache/apk/*
