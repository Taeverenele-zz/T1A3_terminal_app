#!/bin/bash


echo "Installing gems"
sleep 1
bundle install
sleep 1
echo "Launching app"
sleep 1
ruby main.rb