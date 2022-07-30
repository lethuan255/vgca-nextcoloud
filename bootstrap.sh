#!/bin/bash
set -e 

git clone https://github.com/lethuan255/vgca-nextcoloud.git
cd vgca-nextcoloud
cp .env.example .env
chmod -R 775 storage

composer require laravel/sail --dev -n
./sail up -d
./sail artisan migrate
