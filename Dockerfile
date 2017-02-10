FROM alpine:3.4

MAINTAINER Daniel Rees

RUN \ 
  apk add --no-cache curl && \
  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
  mv kubectl /bin/kubectl && \
  chmod a+x /bin/kubectl
