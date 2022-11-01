FROM docker:latest

RUN apk add --update python3 py-pip python3-dev build-base
RUN pip install awscli
RUN pip install aws-sam-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]