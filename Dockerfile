FROM node:10-slim

# Modify this string to enforce an update
ENV VERSION 2019-06-11

RUN apt-get update && \
    apt-get install -y build-essential python git-core && \
    rm -rf /var/lib/apt/lists/*

# Install latest version of yarn
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn --version

WORKDIR /usr/src/app

# CLI tools are installed via 'npm install -g'
RUN npm install -g webpack@4.32.2 webpack-cli@3.3.5 webpack-merge@4.2.1
RUN npm install -g prettier@1.18.2
