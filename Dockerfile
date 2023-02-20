FROM node:14-alpine
WORKDIR /app
# RUN addgroup dev && adduser -S -G node-user dev
# USER node-user
COPY package.json .
RUN apk add --no-cache python3 g++ make
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000