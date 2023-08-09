FROM node:lts-alpine 
 
WORKDIR /app

EXPOSE 3010

COPY package*.json ./

COPY tsconfig*.json ./

RUN npm install

RUN npm cache clean --force

COPY . .

# CMD [ "npm", "run", "start" ]


