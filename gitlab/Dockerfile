FROM ubuntu:18.04
RUN apt update ; apt install -y openssh-server ca-certificates tzdata perl vim; apt clean all
ENV SHELL="/bin/bash"
ARG EXTERNAL_URL="http://gitlab"
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | bash
RUN apt-get install gitlab-ee