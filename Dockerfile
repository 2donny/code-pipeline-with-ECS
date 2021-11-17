# Step 1
FROM node:12 as builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./ ./

RUN npm run build

# Step 2

FROM node:12

WORKDIR /usr/src/app

COPY --from=builder /app ./

EXPOSE 8000

CMD ["npm", "run", "start:prod"]


