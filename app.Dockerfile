FROM node:15
WORKDIR /app
COPY ./BackendProject/package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY ./BackendProject ./
ENV PORT 3001
EXPOSE $PORT
CMD ["node", "server/index.js"]
# CMD ["npm", "run", "dev"]