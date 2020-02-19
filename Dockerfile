FROM node:lts
WORKDIR /workdir
COPY . .
RUN npm install --global \
      jasmine \
      nyc \
      ts-node \
      typescript\
        && \
    npm install --save-dev \
      @types/jasmine
CMD make
