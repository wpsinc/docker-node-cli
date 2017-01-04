# wpsinc/docker-node-cli

FROM node:latest

RUN npm install -g bower gulp

# Define working directory.
WORKDIR /data

# Install dumb-init
RUN apt-get install wget -y
RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64.deb
RUN dpkg -i dumb-init_*.deb

# Cleanup
RUN apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Runs "/usr/bin/dumb-init -- /my/script --with --args"
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Define default command.
CMD ["bash"]
