FROM jenkins:latest
 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers \
      && sudo chown -R jenkins:jenkins /var/run/docker.sock
 
USER jenkins

