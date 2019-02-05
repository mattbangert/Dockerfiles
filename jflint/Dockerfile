FROM node:7-alpine

LABEL maintainer="mattbangert@gmail.com"

ENV JFLINT_VERSION=0.3.0

RUN npm install -g jflint@$JFLINT_VERSION

ENTRYPOINT ["jflint"]