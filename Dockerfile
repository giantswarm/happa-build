FROM node:10-slim

RUN apt-get update && \
    apt-get install -y build-essential python git-core && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

# pre-install some dependencies that take long to build
RUN yarn add node-sass@4.9.4

# CLI tools are installed via 'npm install -g'
RUN npm install -g grunt@1.0.3
