up:
	docker compose up -d

up_build:
	docker compose up -d --build

bash:
	docker compose exec php bash

down:
	docker compose down

db:
	docker compose exec mysql bash

style:
	docker compose exec php bash vendor/bin/php-cs-fixer fix --dry-run --diff -vvv

setup:
	cp --update .env.example .env

	docker compose exec php bash -c "composer install"

	docker compose exec php bash -c "php artisan key:generate"

	docker compose exec php bash -c "php artisan migrate"
