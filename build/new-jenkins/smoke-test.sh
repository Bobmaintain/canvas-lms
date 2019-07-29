#!/bin/bash

export COMPOSE_FILE=docker-compose.new-jenkins.yml

docker-compose run --rm web bundle exec rspec spec/selenium/login_logout_spec.rb -f doc --format html --out results.html
