FROM node:alpine3.15

WORKDIR /app

COPY . .

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD serve -s build