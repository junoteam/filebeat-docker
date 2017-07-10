FROM ubuntu:16.04

ENV FILEBEAT_VERSION 5.4.3
ENV FILEBEAT_URL https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

ENV FILEBEAT_HOME /opt/filebeat-${FILEBEAT_VERSION}-linux-x86_64
ENV PATH $PATH:${FILEBEAT_HOME}

WORKDIR /opt/

RUN apt-get update -qq -y && apt-get install curl -y
RUN curl -sL ${FILEBEAT_URL} | tar xz -C .
ADD filebeat.yml ${FILEBEAT_HOME}/

# Add Tini
ENV TINI_VERSION v0.15.0
ENV TINI_SHA b4724601f4c7439951d3e67056b9f0a2c0ae1a1f
RUN curl -fsSL https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini -o /bin/tini && chmod +x /bin/tini \
&& echo "$TINI_SHA /bin/tini" | sha1sum -c -

COPY executor.sh /bin
RUN chmod +x /bin/executor.sh

ENTRYPOINT ["/bin/tini", "--", "/bin/executor.sh"]
