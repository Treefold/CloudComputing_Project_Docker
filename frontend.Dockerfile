FROM node:16.10.0
WORKDIR /app
COPY ./DWBI_Project/package.json .

RUN npm install

COPY ./DWBI_Project ./
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "start"]