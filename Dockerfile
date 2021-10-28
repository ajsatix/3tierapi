FROM node:17-alpine3.12
COPY package*.json ./
ENV DB 'mydb'
ENV DBUSER 'postgres'
ENV DBPASS 'postgres'
ENV DBHOST ${DBHOST}
ENV DBPORT '5432'
ENV PORT ${PORT}
RUN npm install
COPY . .
EXPOSE $PORT
ENTRYPOINT ["npm","start"]
