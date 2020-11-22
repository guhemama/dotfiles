# Create local bin dir
mkdir ~/.local/bin/

# Essentials & dependencies
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    build-essential \
    gdebi \
    htop \
    tmux \
    unrar \
    unzip \
    gimp \
    vim \
    curl \
    git \
    vlc \
    tmux \
    httpie \
    sqlite3

# PHP
sudo add-apt-repository ppa:ondrej/php
sudo apt install \
    php8.0-cli \
    php8.0-bcmath \
    php8.0-curl \
    php8.0-gd \
    php8.0-intl \
    php8.0-mbstring \
    php8.0-common \
    php8.0-pgsql \
    php8.0-readline \
    php8.0-sqlite3 \
    php8.0-tidy \
    php8.0-zip \
    php8.0-xml
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar ~/.local/bin/composer

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install \
    docker-ce \
    docker-ce-cli \
    containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Clean everything
sudo apt autoremove & sudo apt-get autoclean
