FROM node:10
#app working directory
RUN mkdir -p /usr/src/myapp
#Install app dependencies 
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]


