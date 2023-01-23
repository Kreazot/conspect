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

# linter
format:
	docker-compose exec app isort . --line-length 120 --multi-line 3 && black . -S -l 120

flake8:
	docker-compose exec app flake8 --count

# pipenv
lock:
	docker-compose exec app pipenv lock -v

graph:
	docker-compose exec app pipdeptree
