FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

RUN yarn build

EXPOSE 3002
CMD [ "yarn", "start:prod" ]
