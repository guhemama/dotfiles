sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update
sudo apt-get dist-upgrade 

sudo apt-get install build-essential

sudo apt-get install -y language-pack-en-base

sudo apt-get install unity-tweak-tool 

# Remove Unity garbage
sudo apt-get remove unity-lens-photos unity-lens-video unity-lens-video unity-lens-music 
sudo apt-get remove unity-scope-tomboy unity-scope-zotero unity-scope-yelp 

# Install some useful utils
sudo apt-get install gdebi htop tmux unrar unzip gimp transmission unetbootin vim curl filezilla git
sudo apt-get install numix-icon-theme numix-icon-theme-circle

# Remove bad media player and install the best one ever
sudo apt-get remove totem
sudo apt-get install vlc

# Install PHP7.1
sudo apt-get install php7.1-cli php7.1-curl php7.1-intl php7.1-json php7.1-mcrypt php7.1-mbstring php7.1-mysql php7.1-pgsql php7.1-readline php7.1-sqlite3 php7.1-tidy php7.1-xml

# Install PHP Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
rm composer-setup.php
sudo mv composer.phar /usr/bin/composer

# Install JDK8
sudo apt-get install oracle-java8-installer

# Install MySQL and MySQL Workbench
sudo apt-get install mysql-client-5.7 mysql-server-5.7 mysql-workbench

# Install PostgreSQL and Pgadmin
# https://www.postgresql.org/download/linux/ubuntu/
sudo apt-get update
sudo apt-get install postgresql-9.6 pgadmin3

# Install Redis
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install

# Install Ruby with RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Download Lightbend Activator for Scala
https://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-1.3.10.zip

sudo apt-get autoremove
sudo apt-get autoclean
