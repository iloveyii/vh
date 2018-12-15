#!/bin/bash

if [ "$1" != "new" ] || [  "$1" = "-h" ] ; then
   echo 'Usage: vh.sh new site_name -p path'
   exit 1
fi

cd /etc/apache2/sites-available/

echo "
    <VirtualHost *:80>
        <Directory  "$4">
            Options Indexes FollowSymLinks MultiViews
            AllowOverride All
            Order allow,deny
            Allow from all
            Require all granted
        </Directory>
        DocumentRoot "$4"
        ServerName "$2"".loc"
    </VirtualHost>
" | tee $2".conf"

a2ensite $2".conf"
a2enmod rewrite
service apache2 restart

echo "127.0.0.1 ""$2.loc" >> /etc/hosts
