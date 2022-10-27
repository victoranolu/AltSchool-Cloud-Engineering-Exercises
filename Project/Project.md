# Project Lavarel

In the closing part of the second semester of my Cloud Engineering journey. A small project was given to do. Deploy a Lavarel app in a server using the Debian 11. I used a cloud service, [Digital Ocean](https://digitalocean.com) by creating a droplet and putting the required parts necessary for its creation. To get a domain name, I had to claim one from [Namecheap](https://namecheap.com) thanks to Github Student Developer Pack i was able to get one year service of the domain name `server.poormanalfred.me`. After setting everything in both sites connect to the live console terminal in Digital Ocean.

## Install Apcahe2;
<pre><code>
sudo apt update

sudo apt upgrade -y

sudo apt install apache2

sudo systemctl start apache2

sudo systemctl enable apache2
</code></pre>

## Install php

<pre><code>
sudo apt-get install ca-certificates apt-transport-https software-properties-common -y

sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list

curl -fsSL  https://packages.sury.org/php/apt.gpg| sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-keyring.gpg
</code></pre>

<pre><code> 
sudo apt update -y

sudo apt-get install php8.1 libapache2-mod-php php8.1-dev php8.1-zip php8.1-curl php8.1-mbstring php8.1-mysql php8.1-gd php8.1-xml
</code></pre>

To check the php version installed

`php -v`

## Install MySQL

<pre><code>
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb

sudo apt install ./mysql-apt-config_0.8.22-1_all.deb
</code></pre>

(select mysql server) (select ok)

<pre><code>
sudo dpkg-reconfigure mysql-apt-config

sudo apt update

sudo apt install mysql-server
</code></pre>

(select recommended) (input a password that will be linked to your database, we will use the password as we progress) (select recommended)

<pre><code>
sudo systemctl enable --now mysql

sudo service mysql status
</code></pre>

mysql -u root -p
	 (enter the previous password you created)
 >SHOW DATABASES;
 >CREATE DATABASE miniprojectdb;
 >USE laraveldb;
 >\q
 (to exit)

 ## Install Composer

<pre><code>
cd ~

sudo curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar  /usr/local/bin/composer

sudo chmod +x   /usr/local/bin/composer

composer --version
</code></pre>

Now we will need to clone the git repo of lavarel example app. `Note when you see "myapp" you can replace it with any name of your choosing`

<pre><code>
sudo apt update && sudo apt upgrade -y

sudo apt install git

git clone "https://github.com/f1amy/laravel-realworld-example-app.git"

sudo mv laravel-realworld-example-app myapp

cd myapp

composer install

cd ~

sudo mv myapp /var/www/html

cd /var/www/html/myapp

sudo chown -R www-data:www-data /var/www/html/myapp

sudo chmod -R 775 /var/www/html/myapp/storage

sudo mv .env.example .env

sudo nano .env
</code></pre>

Edit the .env file to look exactly like this

<pre><code>

APP_NAME="myapp" (name of the app you waant to give it)
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://10.0.2.15
APP_PORT=3000

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=miniprojectdb (input the name of the database you did when setting up your database at installing MySQL step)
DB_USERNAME=root
DB_PASSWORD= debian

BROADCAST_DRIVER=log
CACHE_DRIVER=file
</code></pre>

save the fileand close it. `Note: replace 10.0.2.15 with your public ip from Digital Ocean not your local machine. DB_PASSWORD put the password you created in mysql`

Then run this;

<pre><code>
sudo php artisan key:generate
sudo php artisan migrate
 
cd routes
sudo nano web.php
</code></pre>

Now uncomment the last block of code. Save and close

<pre><code>
cd /etc/apache2/sites-available
sudo nano laravel.conf
</code></pre>

paste this 

<pre><code>
VirtualHost *:80>
    ServerName your_domain
    ServerAlias www.your_domain 
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/your_domain
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
/VirtualHost>

</code></pre>

save the file and close

Lastly, run this;

<pre><code>
sudo a2dissite 000-default.conf

sudo a2ensite laravel.conf

sudo a2enmod rewrite

sudo systemctl reload apache2

cd ~
</code></pre>

Close the console and Lavarel will be depolyed by running your domanin name.

## Encrypt the Server with SSL

HTTPS is a protocol for secure communication between a server (instance) and a client (web browser). Due to the introduction of Let’s Encrypt, which provides free SSL certificates, HTTPS are adopted by everyone and also provides trust to your audiences.

Here we will install Certbot to install Let’sEncrypt SSL using `Snap`.

<pre><code>
sudo apt update
sudo apt install snapd -y
sudo snap install core
sudo snap refresh core
</code></pre>

Install Certbot tool.

`sudo snap install --classic certbot`

Configure Certbot to be executable as as a command.

`sudo ln -s /snap/bin/certbot /usr/bin/certbot`

Now we have installed Certbot to install Let’s Encrypt for Debian 11.

Execute the following command to install your certificates.

`sudo certbot --apache --agree-tos --redirect -m youremail@email.com -d domainname.com -d www.domainname.com`

Select the appropriate option and hit `Enter`

