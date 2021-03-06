FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 80
CMD [ "node", "/usr/src/app/src/index.js" ]
