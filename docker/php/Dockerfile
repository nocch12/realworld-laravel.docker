FROM php:8.1-fpm-bullseye

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
  apt-get -y install --no-install-recommends git unzip libzip-dev libicu-dev libonig-dev \
  openssh-client socat && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  pecl install xdebug && \
  docker-php-ext-install intl pdo_mysql zip bcmath && \
  docker-php-ext-enable xdebug

WORKDIR /var/www/laravel