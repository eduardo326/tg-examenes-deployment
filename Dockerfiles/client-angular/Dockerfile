# Stage 0, basado en Node.js
FROM node:14.15.3-alpine as node
WORKDIR /app
COPY ./app /app/
RUN npm install
RUN npm run build -- --prod

# Stage 1, basado en httpd
FROM httpd:latest
COPY --from=node /app/dist /usr/local/apache2/htdocs