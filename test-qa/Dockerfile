FROM node:latest as builder

COPY package.json package-lock.json ./

RUN npm i

COPY . .

CMD ["npm", "run", "test:e2e"]

