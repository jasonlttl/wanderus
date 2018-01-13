chmod 755 web/sites/default
chmod 755 web/sites/default/settings.php

echo "Copying out a local file with sqlite connection info"
cp -f scripts/local/settings.local.php web/sites/default/settings.local.php


cd web
echo "Backing up sites/default/settings.php"
cp sites/default/settings.php sites/default/settings.php.bak

echo "Installing Drupal w\SQLite"
drush --yes site-install standard --db-url=sqlite://sites/default/sqlite.db

chmod 755 sites/default
chmod 755 sites/default/settings.php

echo "Fixing settings.php and settings.local.php"
rm -f sites/default/settings.php
mv sites/default/settings.php.bak sites/default/settings.php

chmod 555 sites/default
chmod 555 sites/default/settings.php

echo "Installing everything and the kitchen sink"
drush en devel devel_generate --yes


echo "Starting php server"
cd ..
./scripts/local/start.sh