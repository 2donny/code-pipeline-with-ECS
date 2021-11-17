# Step 1
FROM node:12-alpine as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./ ./

RUN npm run build

EXPOSE 80

CMD ["npm", "run", "start:prod"]


