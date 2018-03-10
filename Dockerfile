FROM jenkins:latest
 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers \

RUN grep -vwE "(jenkins)" /etc/passwd > /etc/passwd_bak \
&& echo "jenkins:x:0:0::/var/jenkins_home:/bin/bash" >> /etc/passwd_bak \
&& mv /etc/passwd /etc/passwd.bak \
&& mv /etc/passwd_bak /etc/passwd \
 
USER jenkins

