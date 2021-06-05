# pull official base image
FROM node:14-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package*.json ./
RUN npm install 

# install app dependencies silently
# RUN npm install --silent

# add app
COPY . ./

EXPOSE 8080

# start app
CMD ["npm", "start"]




