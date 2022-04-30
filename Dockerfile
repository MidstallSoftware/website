FROM node:16-alpine

RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

RUN apk update && apk upgrade
RUN apk add git

COPY . /usr/src/nuxt-app/
RUN npm install && npm run build && npm prune --production && rm -rf layouts pages store test

EXPOSE 5000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=80

CMD [ "npm", "start" ]
