build:
	docker-compose build

up:
	docker-compose up -d

ps:
	docker-compose ps

down:
	docker-compose down

stop:
	docker-compose stop

bash:
	docker-compose exec app bash

log:
	docker-compose logs -f --tail 100 app

test:
	docker-compose exec app pytest

flake8:
	docker-compose exec app flake8 --count
