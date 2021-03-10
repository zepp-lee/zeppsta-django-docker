FROM alpine:latest
ARG USER
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
ENV HOME /home/$USER
ENV SSH_AUTH_SOCK="/ssh-agent"
WORKDIR /code
RUN apk -U upgrade
RUN apk add --upgrade git npm openssh-client
RUN adduser -D $USER
USER $USER
