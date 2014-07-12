cd /usr/local/bin/
#download composer
curl -sS https://getcomposer.org/installer | php
#rename
mv composer.phar composer
#update to latest version
composer self-update
