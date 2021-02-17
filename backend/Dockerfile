FROM node:14-alpine

WORKDIR /app

RUN chown node:node /app

COPY --chown=node:node package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 80

CMD ["npm", "start"]