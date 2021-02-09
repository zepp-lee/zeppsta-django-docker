FROM python:3.8
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV PYTHONUNBUFFERED=1
ENV SSH_AUTH_SOCK="/ssh-agent"
RUN apt-get update
RUN apt-get install openssh-server
WORKDIR /code
