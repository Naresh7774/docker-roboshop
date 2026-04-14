FROM node:20.19.5-alpine3.21 AS build
WORKDIR /opt/server
COPY package.json .
COPY *.js .
# this may add extra cache memory
RUN npm install 

FROM node:20.19.5-alpine3.21
# Create a group and user
WORKDIR /opt/server

RUN addgroup -S roboshop && adduser -S roboshop -G roboshop && \
    chown -R roboshop:roboshop /opt/server
EXPOSE 8080