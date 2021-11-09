FROM node:16-alpine as builder

WORKDIR /app

COPY . .

RUN npm install -g husky

RUN npm ci --no-package-lock

RUN npm run build

RUN NODE_ENV=production npm run generate

FROM nginx:stable-alpine

LABEL maintainer="Fabiano Honorato <fabianoshz@gmail.com>"

WORKDIR /var/www

COPY "docker/nginx/default.conf" "/etc/nginx/conf.d/default.conf"

COPY --from=builder /app/dist /var/www/

RUN chown -R nginx:nginx /var/www /var/cache/nginx /var/log/nginx /etc/nginx/conf.d

RUN chmod -R 755 /var/www

RUN touch /var/run/nginx.pid && chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 80
