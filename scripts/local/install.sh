cd web
echo "Installing Drupal w\SQLite"
drush --yes site-install standard --db-url=sqlite://sites/default/sqlite.db

echo "Installing everything and the kitchen sink"
drush en devel devel_generate --yes


echo "Starting php server"
cd ..
./scripts/local/start.sh