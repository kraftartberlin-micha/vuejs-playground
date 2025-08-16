ARG NODE_VERSION=24.4.1

FROM node:${NODE_VERSION}-alpine as base
WORKDIR /usr/src/app
EXPOSE 3000

FROM base as dev
USER node
COPY .. .
CMD npm run dev

FROM base as prod
USER node
COPY .. .
CMD node src/index.js