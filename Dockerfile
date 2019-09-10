FROM node:10

WORKDIR /node-app

RUN mkdir /credentials
RUN ls -s /credentials /node-app/credentials

COPY index.js ./
COPY package*.json ./

RUN npm install

CMD [ "node", "index.js" ]