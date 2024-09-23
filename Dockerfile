# syntax=docker/dockerfile:1

FROM mcr.microsoft.com/devcontainers/javascript-node:20

RUN apt-get update && apt-get install -y --no-install-recommends curl git sqlite3

USER node
RUN npm install -g @sap/cds-dk
WORKDIR /root/home