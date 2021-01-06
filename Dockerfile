FROM node:buster

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json /app/

RUN yarn install

# Bundle app source
COPY src /app/src

EXPOSE 3000

CMD [ "node", "src/server.js" ]

