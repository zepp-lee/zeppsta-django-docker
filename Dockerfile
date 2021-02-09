FROM python:3.8-alpine
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV PYTHONUNBUFFERED=1
ENV SSH_AUTH_SOCK="/ssh-agent"
RUN apk -U upgrade
RUN apk add alpine-sdk jpeg-dev openrc openssh postgresql-dev zlib-dev
RUN rc-update add sshd
RUN /etc/init.d/sshd start
WORKDIR /code
