#!/bin/bash
set -e 

git clone https://github.com/kma-custom-nextcloud/vgca-nextcloud.git
cd vgca-nextcoloud
cp .env.example .env

composer require laravel/sail --dev -n
./sail up -d
./sail artisan migrate
