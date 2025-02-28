FROM node

WORKDIR /app

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

RUN npm install

# ENV APP_NAME='app'
# ENV ROUTING='true'
# ENV STANDALONE='false'
# ENV STRICT='true'
# ENV STYLE='css'
# CMD ng new $APP_NAME --routing=$ROUTING --standalone=$STANDALONE --strict=$STRICT --style=$STYLE \
#     && mv $APP_NAME/* . \
#     && rm -rf $APP_NAME \
#     && ng serve --host 0.0.0.0 --port 4200

COPY . .

EXPOSE 4200

CMD ["sh", "-c", "tail -f /dev/null", "ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
# CMD ["sh", "-c", "tail -f /dev/null"]
