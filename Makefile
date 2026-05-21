export UID := $(shell id -u)
export GID := $(shell id -g)

setup:
	docker-compose run --rm app make setup

dev:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
