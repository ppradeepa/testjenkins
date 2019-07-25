
FROM node:10-alpine
# Create app directory
RUN mkdir -p /usr/src/app

#change the working directory and copy app files to the docker file system
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
COPY package*.json ./
CMD node app.js
EXPOSE 8000
