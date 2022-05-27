FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

ARG port

RUN yarn build
EXPOSE ${port}

CMD [ "yarn", "start:prod" ]
