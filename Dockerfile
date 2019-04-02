FROM ruby:2.6.2-alpine3.9

ENV LIBRARY_PATH=/usr/local/lib:$LIBRALY_PATH

RUN apk add --no-cache \
      build-base \
      libxml2-dev \
      libpcap-dev \
      libxslt-dev && \
    gem install \
      'kelbim:0.3.1' \
      'piculet:0.3.0' \
      'roadworker:0.5.10'

CMD sh -c 'ruby -v && kelbim -v && piculet -v && roadwork -v'

