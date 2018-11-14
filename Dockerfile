FROM node:10-slim

RUN apt-get update && \
    apt-get install -y build-essential python git-core && \
    rm -rf /var/lib/apt/lists/*

# Install latest version of yarn
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn --version

WORKDIR /usr/src/app

# CLI tools are installed via 'npm install -g'
RUN npm install -g grunt@1.0.3

