 #Base image
FROM node:14-alpine 

# Create app directory
WORKDIR /usr/lab6

# Copy package.json and package-lock.json
COPY ./package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Set the version number
ARG VERSION
ENV VERSION=${VERSION}
#RUN npm install -g typescript

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]