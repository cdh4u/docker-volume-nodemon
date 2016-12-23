FROM node:argon

# Install express locally
RUN npm install express

# Install nodemon
RUN npm install --global nodemon

# Create app directory
#RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# COPY may not be needed due to the volume 
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
#CMD [ "npm", "start" ]
CMD [ "nodemon", "-L", "server.js" ]
