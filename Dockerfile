FROM python:3.8-alpine
ARG USER
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV HOME /home/$USER
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV SSH_AUTH_SOCK="/ssh-agent"
WORKDIR /code
RUN apk -U upgrade
RUN apk add --upgrade gcc git jpeg-dev musl-dev openssh-client postgresql-dev zlib-dev
RUN adduser -D $USER
USER $USER
