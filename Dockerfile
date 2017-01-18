FROM jenkins:2.32.1

USER root
RUN apt-get update \
      && apt-get install -y sudo docker.io\
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
