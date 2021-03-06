FROM python:3.8
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV SSH_AUTH_SOCK="/ssh-agent"
RUN apt-get update
RUN apt-get --assume-yes install openssh-server
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
RUN echo "ssh" >> /etc/securetty
RUN passwd -d root
WORKDIR /code
