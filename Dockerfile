FROM ubuntu
WORKDIR /app
RUN apt-get update && \
    apt-get install -y nodejs npm
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
