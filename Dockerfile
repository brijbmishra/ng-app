FROM node

WORKDIR /
RUN mkdir app
WORKDIR /app

# Install Angular CLI globally
RUN npm install -g @angular/cli

ENV APP_NAME='app'
ENV ROUTING='true'
ENV STANDALONE='false'
ENV STRICT='true'
ENV STYLE='css'

# CMD ng new $APP_NAME --routing=$ROUTING --standalone=$STANDALONE --strict=$STRICT --style=$STYLE \
#     && mv $APP_NAME/* . \
#     && rm -rf $APP_NAME \
#     && ng serve --host 0.0.0.0 --port 4200

COPY . /app/

CMD ng serve --host 0.0.0.0 --port 4200

EXPOSE 4200
