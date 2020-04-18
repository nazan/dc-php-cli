FROM php:7.1-cli-alpine3.10

ARG UID
ARG GID
ARG USERNAME

RUN apk update && apk add bash

RUN if grep -q "^$USERNAME" /etc/group; then echo "Group already exists."; else addgroup -g $GID -S $USERNAME; fi
RUN adduser -s /usr/bin/bash -u $UID -S $USERNAME -G $USERNAME

RUN mkdir /home/$USERNAME/src

COPY keep-it-running.sh /usr/src/app/

CMD [ "/usr/src/app/keep-it-running.sh" ]