FROM python:3.8
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV PYTHONUNBUFFERED=1
ENV SSH_AUTH_SOCK="/ssh-agent"
RUN apt-get update
RUN apt-get --assume-yes install openssh-server
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd
ENTRYPOINT service ssh start && sh
WORKDIR /code
