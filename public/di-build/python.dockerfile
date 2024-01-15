FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY /home/pc7/Documents/develop/dig-tool/dig-assistant-tool-backend/public/di-build/package.json ./

# RUN npm install

# Bundle app source
COPY . .

EXPOSE 4200