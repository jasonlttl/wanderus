[![CircleCI](https://circleci.com/gh/jasonlttl/wanderus.svg?style=shield)](https://circleci.com/gh/jasonlttl/wanderus)
[![Dashboard wanderus](https://img.shields.io/badge/dashboard-wanderus-yellow.svg)](https://dashboard.pantheon.io/sites/e6d3fca9-24c5-485b-b56e-0ffcb2b497a7#dev/code)
[![Dev Site wanderus](https://img.shields.io/badge/site-wanderus-blue.svg)](http://dev-wanderus.pantheonsite.io/)

# WanderUs

A website cataloging natural parks.

## Setup

```
# Clone the repository.
git clone git@github.com:jasonlttl/wanderus.git

# Install dependencies.
composer install

# Install drupal.
./scripts/local/install.sh

```

## Configuration Management

Configuration is stored in ./config and exported and imported via drush.

```
# Export configuration
drush cex -y

# Import configuration
drush cim -y
```

If you install locally, it will automatically import configuration.

See also [Pantheon's documentation on configuration management](https://pantheon.io/docs/drupal-8-configuration-management/).