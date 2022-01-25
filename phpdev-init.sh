
#!/bin/zsh

apt update
apt install curl git php-fpm nginx mysql-server phpmyadmin memcached redis-server php-redis php-memcached

wget --output-document=/tmp/vsc.deb  https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64 && dpkg -i  /tmp/vsc.deb 



mysql < resetPass.txt && systemctl restart mysql.service
