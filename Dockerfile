FROM node:alpine
WORKDIR /app
COPY Nodejs-REST-API/package-lock.json .
COPY Nodejs-REST-API/package.json . 
RUN npm ci 
COPY Nodejs-REST-API/. .
CMD [ "npm", "start" ]
