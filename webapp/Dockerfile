ARG NODE_VERSION=20.17.0

FROM node:${NODE_VERSION}

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install