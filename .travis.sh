#!/bin/sh
set -ex
hhvm --version

composer install --ignore-platform-reqs

hh_client

hhvm vendor/bin/phpunit
hhvm vendor/bin/hhast-lint
