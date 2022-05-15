#!/usr/bin/env bash

sudo add-apt-repository -y ppa:ondrej/php &&
    sudo apt-get install -y apache2 tmux curl git zip unzip libapache2-mod-php7.3 php7.3 php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql \
        php7.3-zip php7.3-gd php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json

sudo usermod -a -G www-data vagrant &&
    sudo chmod -R +x /home

sudo usermod -a -G vagrant www-data

sudo cp /home/vagrant/app/apache/vagrant-local.conf /etc/apache2/sites-available/ &&
    sudo a2ensite vagrant-local.conf &&
    sudo a2dissite 000-default.conf &&
    sudo systemctl reload apache2

sudo ufw allow http
sudo ufw allow https

sudo curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo snap install docker

sudo addgroup --system docker &&
    sudo adduser vagrant docker &&
    newgrp docker &&
    sudo snap disable docker &&
    sudo snap enable docker

# sudo groupadd docker && sudo usermod -a -G docker vagrant
# sudo chown root:docker /var/run/docker.sock
