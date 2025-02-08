# uses node version 22 as base image
FROM node:22

# goes to app directory
WORKDIR /app


# copy package.json and package-lock.json (if available)
COPY package*.json ./

# install app dependencies
RUN npm install

# copy the rest of the app into the containter
COPY . .

# set port environment variable - not necessary, check why
# ENV PORT=3000

# Expose this port, so the computer can access it - not necessary, check why
# EXPOSE 3000

#run the app
CMD ["npm", "start"]
