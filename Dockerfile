FROM node:alpine

RUN apk update && apk add bash

WORKDIR /opt/app
COPY package*.json /opt/app/

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
    then npm install --frozen-lockfile; \
    else npm install --only=production; \
    fi

RUN npm i -g @adonisjs/cli && npm i @adonisjs/ignitor

COPY . /opt/app/
EXPOSE 3000

CMD ["npm","start"]