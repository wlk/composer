FROM composer/composer:php5

RUN apt update && apt -y install libssl-dev

RUN pecl install mongo && echo "extension=mongo.so" > $PHP_INI_DIR/conf.d/mongo-extension.ini

