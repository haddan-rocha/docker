FROM node:14-alpine
WORKDIR /app
# RUN addgroup dev && adduser -S -G node-user dev
# USER node-user
COPY . .
RUN apk add --no-cache python g++ make
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000