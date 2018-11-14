FROM node:10-slim

RUN apt-get update && \
    apt-get install -y build-essential python git-core && \
    rm /var/lib/apt/lists/*
