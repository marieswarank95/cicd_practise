FROM node:12.0
WORKDIR app
COPY app.js .
RUN npm install express
CMD ["node", "app.js"]
