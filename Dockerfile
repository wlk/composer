FROM composer/composer:php5

RUN apt-get update && apt-get -y install libssl-dev && apt-get clean

RUN pecl install mongo && echo "extension=mongo.so" > $PHP_INI_DIR/conf.d/mongo-extension.ini

