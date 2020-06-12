FROM jenkins/jnlp-slave:4.3-4

USER root
ENV DOCKER_VERSION 18.06.1
RUN curl -sSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}-ce.tgz -o docker.tgz \
    && tar zxf docker.tgz -C /tmp \
    && rm docker.tgz \
    && mv /tmp/docker/* /usr/local/bin
RUN apt-get update; apt-get install -y jq

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip \
    && rm -rf aws
