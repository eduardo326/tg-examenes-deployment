# Stage 0, based on Node.js, to build and compile Angular
FROM node:14.15.3-alpine as node
WORKDIR /app
COPY ./app /app/
RUN npm install
RUN npm run build -- --prod

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM httpd:latest
COPY --from=node /app/dist /usr/local/apache2/htdocs
