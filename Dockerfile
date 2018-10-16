FROM jenkins/jnlp-slave:3.26-1

USER root
ENV DOCKER_VERSION 18.06.1
RUN curl -sSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}-ce.tgz -o docker.tgz \
    && tar zxf docker.tgz -C /tmp \
    && rm docker.tgz \
    && mv /tmp/docker/* /usr/local/bin
