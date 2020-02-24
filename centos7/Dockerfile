ARG CENTOS_VERSION=7
FROM centos:${CENTOS_VERSION}

ARG PHP_VERSION=73
ARG CENTOS_VERSION=7

RUN \
  yum upgrade -y && \
  yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-${CENTOS_VERSION}.noarch.rpm &&\
  yum install -y http://rpms.remirepo.net/enterprise/remi-release-${CENTOS_VERSION}.rpm && \
  yum install -y yum-utils && \
  yum clean all
  
RUN yum install -y --enablerepo=remi-php${PHP_VERSION} \
  php-common \
  php-xmlrpc \
  php-pecl-memcached \
  php-pecl-memcache \
  php-mysqlnd \
  php-pear \
  php-gd \
  php-mbstring \
  php-cli \
  php-process \
  php-opcache \
  php-pecl-redis \
  php-bcmath \
  php-pecl-gearman \
  php-soap \
  php-zip \
  ImageMagick \
  php-pecl-imagick && yum clean all

RUN useradd -u 33 -g 33 www-data

USER www-data

CMD ["php"]
