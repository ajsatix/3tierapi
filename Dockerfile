FROM node:17-alpine3.12

# Create app directory
#WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
ENV DB 'mydb'
ENV DBUSER 'postgres'
ENV DBPASS 'postgres'
ENV DBHOST '127.0.0.1'
ENV DBPORT '5432'

ENV PORT ${PORT}
RUN npm install
RUN npm audit fix --force
# If you are building your code for production
# RUPI_HOST ${API_HOST}N npm ci --only=production

# Bundle app source
COPY . .

EXPOSE $PORT
ENTRYPOINT ["npm","start"]
