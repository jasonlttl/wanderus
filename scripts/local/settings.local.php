<?php
/**
 * This file gets copied over to sites/default/local.settings.php
 * to aid in local development.
 */

$databases['default']['default'] = array (
  'database' => 'sites/default/sqlite.db',
  'prefix' => '',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\sqlite',
  'driver' => 'sqlite',
);

$settings['hash_salt'] = "this-should-be-randomized";