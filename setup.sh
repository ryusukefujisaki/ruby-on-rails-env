#!/bin/bash

set -eux

git clone git@github.com:ryusukefujisaki/ruby-on-rails.git rails
git clone -b ruby_on_rails git@github.com:ryusukefujisaki/nginx.git nginx
git clone git@github.com:ryusukefujisaki/postgres.git postgres
