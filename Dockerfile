FROM node:15
WORKDIR /app
ENV NODE_ENV=production
ENV DATABASE_URL=postgresql://menther:Bootcamp13@103.187.147.155:5432/literature
COPY . .
RUN npm install -g nodemon
RUN npm install sequelize-cli
RUN npx sequelize db:migrate
EXPOSE 5000
CMD ["nodemon", "server.js"]
