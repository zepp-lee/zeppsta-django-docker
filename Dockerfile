FROM python:3.8-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV PYTHONUNBUFFERED=1
ENV SSH_AUTH_SOCK="/ssh-agent"
RUN apk update
RUN apk add --update gcc git musl-dev openrc openssh postgresql-dev
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:" | chpasswd
WORKDIR /code
