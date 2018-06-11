# Create local bin dir
mkdir ~/.local/bin/

# Essentials & dependencies
sudo apt-get install build-essential
sudo apt-get install gdebi htop tmux unrar unzip gimp transmission vim curl filezilla git vlc tmux httpie
sudo apt-get install numix-icon-theme numix-icon-theme-circle

# PHP
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install php7.2-cli php7.2-bcmath php7.2-curl php7.2-gd php7.2-intl php7.2-json php7.2-mbstring php7.2-pdo php7.2-mysql php7.2-pgsql php7.2-readline php7.2-sqlite3 php7.2-tidy php7.2-zip php7.2-xml
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar .local/bin/composer
composer global require hirak/prestissimo

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Java
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java10-installer

# Scala
## SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

## Ammonite
sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/1.1.2/2.12-1.1.2) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm

# Redis
sudo add-apt-repository ppa:chris-lea/redis-server
sudo apt-get update
sudo apt-get install redis

# Node & Yarn
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y nodejs yarn

# Ruby & RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# MySQL
sudo apt-get install mysql-client-5.7 mysql-server-5.7 mysql-workbench

# Postgres
echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee -a /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-10 postgresql-client-10 pgadmin4
sudo apt-get -y install python3-pip
pip3 install pgcli

# Ansible
pip3 install ansible

# SQLite
sudo apt-get install sqlite3 sqliteman

# Clean everything
sudo apt-get autoremove
sudo apt-get autoclean