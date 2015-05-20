FROM ubuntu:14.04
MAINTAINER  CREATIVE AREA

ENV DEBIAN_FRONTEND noninteractive
ENV KIBANA_VERSION 4.0.2

RUN apt-get -qq update

ADD https://download.elasticsearch.org/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz /tmp/

RUN cd /tmp && \
	tar xzf kibana-*.tar.gz \
	&& rm kibana-*.tar.gz \
	&& mv kibana-* /opt/kibana

COPY start.sh /start.sh
RUN chmod 0755 /start.sh

EXPOSE 5601

CMD ["/start.sh"]
