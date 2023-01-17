FROM node:15

COPY ./instantclient_21_8/* ./opt/oracle/instantclient_21_8/
RUN echo /opt/oracle/instantclient_21_8 > /etc/ld.so.conf.d/oracle-instantclient.conf && ldconfig
RUN apt-get update && apt-get install -y libaio1
ENV LD_LIBRARY_PATH /opt/oracle/instantclient_21_8

WORKDIR /app
COPY ./BackendProject/package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY ./BackendProject ./
ENV PORT 3002
EXPOSE $PORT
CMD ["node", "server/index.js"]
