FROM node:14

WORKDIR /opt/app

COPY package*.json ./

RUN npm i -g @adonisjs/cli && npm i @adonisjs/ignitor
RUN npm i -g nodemon -D
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]