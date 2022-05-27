FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

RUN yarn build

EXPOSE 3004
CMD [ "yarn", "start:prod" ]
