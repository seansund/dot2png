FROM alpine:3.6

RUN mkdir /graphviz && \
  apk add --update graphviz ttf-dejavu && \
  rm -rf /var/cache/apk/*

WORKDIR /graphviz
VOLUME ["/data"]

CMD dot -v -Tpng
