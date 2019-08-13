FROM circleci/php:7.3-node-browsers

RUN sudo apt-get update \
    && sudo apt-get install -y libpq-dev \
    && sudo docker-php-ext-install zip \
    && sudo docker-php-ext-install pdo_pgsql \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*
