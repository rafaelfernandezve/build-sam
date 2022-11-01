FROM docker:latest

# Install base
RUN apk --update --no-cache add nodejs npm python3 py3-pip curl bash git && \
    ln -sf /usr/bin/python3 /usr/bin/python

# Install golang
COPY --from=golang:1.19-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"
ENV GOPATH="/go"

# Update npm
RUN npm config set unsafe-perm true
RUN npm update -g

# Install cli
RUN apk add --update python3 py-pip python3-dev build-base
RUN pip install --upgrade pip && \
    pip install --upgrade awscli && \
    pip install --upgrade aws-sam-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]