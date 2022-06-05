#!/bin/bash
set -e 

git clone https://gitlab.com/nopain1210/vgca-nextcoloud.git
cd vgca-nextcoloud
cp .env.example .env

composer require laravel/sail --dev -n
./sail up -d
./sail artisan migrate
