#!/bin/bash

chmod -R 755 /usr/local/nginx/html
chown -R www-data:www-data /usr/local/nginx/html

nginx
