# Create local bin dir
mkdir ~/.local/bin/

# Essentials & dependencies
sudo apt-get install build-essential
sudo apt-get install gdebi htop tmux unrar unzip gimp vim curl filezilla git vlc tmux httpie

# PHP
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install php7.3-cli php7.3-bcmath php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-pdo php7.3-mysql php7.3-pgsql php7.3-readline php7.3-sqlite3 php7.3-tidy php7.3-zip php7.3-xml
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
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
sudo apt install oracle-java13-installer

# Scala
## SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

## Ammonite
sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/1.1.2/2.12-1.1.2) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm

# Ruby & RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Ansible
pip3 install ansible

# SQLite
sudo apt-get install sqlite3

# Clean everything
sudo apt-get autoremove
sudo apt-get autoclean
