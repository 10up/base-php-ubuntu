FROM ubuntu:20.04

ARG PHP_VERSION=7.3

RUN \
  apt update && apt dist-upgrade -y && apt install software-properties-common -y && apt clean

RUN \
  add-apt-repository ppa:ondrej/php;
  
RUN \
  apt install -y \
  php${PHP_VERSION} \
  php${PHP_VERSION}-xmlrpc \
  php${PHP_VERSION}-memcache \
  php${PHP_VERSION}-memcached \
  php${PHP_VERSION}-mysql \
  php${PHP_VERSION}-gd \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-cli \
  php${PHP_VERSION}-opcache \
  php${PHP_VERSION}-redis \
  php${PHP_VERSION}-bcmath \
  php${PHP_VERSION}-soap \
  php${PHP_VERSION}-zip \
  php${PHP_VERSION}-intl \
  php${PHP_VERSION}-imagick \
  imagemagick && apt clean
    
USER www-data

CMD ["php"]
