FROM node:10.0.0

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY . /app/

RUN npm install --silent
RUN npm install --silent -g react-scripts

ENTRYPOINT [ "npm" ]

CMD [ "start" ]
