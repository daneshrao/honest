FROM node:10

# Create app directory
WORKDIR /usr/src/app

#copying package
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]
