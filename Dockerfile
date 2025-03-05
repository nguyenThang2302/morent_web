FROM node:20-alpine AS development

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm i --legacy-peer-deps

COPY . .
COPY .env.qa .env

EXPOSE 3000

CMD ["npm", "run", "dev"]
