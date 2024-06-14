# FROM nginx:alpine
# COPY . /usr/share/nginx/html`

# FROM webdevops/php-nginx:8.2
# COPY . /app

FROM webdevops/php-nginx:8.2
COPY ./i4gic2024 /app
WORKDIR /app
RUN composer install
RUN php artisan key:generate
RUN apt-get update && apt-get install -y npm
RUN chmod -R 777 /app/storage
RUN php artisan migrate
# RUN npm i && npm run build
ENV WEB_DOCUMENT_ROOT=/app/public

# FROM webdevops/php-nginx:8.2
# COPY ./i4gic2024 /app
# WORKDIR /app
# RUN apt-get update && apt-get install -y git
# RUN composer install --prefer-dist --no-interaction --verbose
# RUN php artisan key:generate
# RUN apt-get update && apt-get install -y npm