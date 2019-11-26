FROM alpine
LABEL maintainer="Mykola Bubelich <projects@bubelich.com>"

ENV KUBE_VERSION="v1.16.2"

# Metadata
LABEL org.label-schema.vcs-url="https://github.com/thesimj/docker-kubectl" \
      org.label-schema.docker.dockerfile="/${KUBE_VERSION}/Dockerfile"

# Build
RUN apk add --no-cache ca-certificates curl gettext
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN apk del --purge curl && rm -f /var/cache/apk/*

WORKDIR /root
