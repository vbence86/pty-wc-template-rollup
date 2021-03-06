# Select reference image
FROM node:10-alpine

# This is optional. Sets the level of logging that you see
ENV NPM_CONFIG_LOGLEVEL warn

# Create app directory
WORKDIR /usr/src/app

# Copy project files into the docker image
COPY . .

# Install app dependencies
RUN npm set progress=false && npm install

# Make port 8086 available
EXPOSE 8086

# run storybook app
CMD ["npm", "start"]
