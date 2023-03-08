FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]

FROM node: latest

RUN mkdir /app/src

WORKDIR /app/src

