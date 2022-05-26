FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

RUN yarn build

EXPOSE 3001
CMD [ "yarn", "start:prod" ]
