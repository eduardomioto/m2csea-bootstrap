FROM jenkins:latest

ENV http_proxy="http://topologia:Philips.2017@proxy.whebdc.com.br:3128"
ENV https_proxy="http://topologia:Philips.2017@proxy.whebdc.com.br:3128"

USER root

RUN apt-get update
RUN apt-get install -y sudo

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# Docker
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install apt-transport-https ca-certificates -y
RUN sh -c "echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list"
RUN apt-get update

# Minimal Jenkins Plugins
RUN /usr/local/bin/install-plugins.sh git matrix-auth workflow-aggregator docker-workflow blueocean credentials-binding

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# COPY LocallyDeployIdentityConfig.xml /var/jenkins_home/jobs/identity/config.xml

USER jenkins