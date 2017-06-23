# wpsinc/docker-node-cli

FROM node:alpine

RUN apk --no-cache add make gcc g++ python git

# Install dumb-init
RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ add dumb-init

RUN npm install -g bower gulp \
    && chmod -R 755 /usr/local/lib/node_modules

# Define working directory.
WORKDIR /data

# Runs "/usr/bin/dumb-init -- /my/script --with --args"
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Define default command.
CMD ["bash"]
